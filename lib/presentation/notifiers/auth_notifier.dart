import 'package:provider/provider.dart';

import '../../di.dart';
import '../../entity/app_user.dart';
import '../../entity/ui_state/appuser_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../repository/repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../utils/utilities.dart';
import 'push_notification_notifier.dart';

class AuthNotifier extends ChangeNotifier {
  Repository get _repository => getIt<Repository>();

  AuthNotifier() {
    _firebaseUser = _fireAuth.currentUser;
    if (_firebaseUser != null && _appUserUIState.appUser == null) {
      getAppUser();
    }
  }

  FirebaseAuth get _fireAuth => getIt.get<FirebaseAuth>();
  GoogleSignIn get _googleSigner => getIt.get<GoogleSignIn>();

  AppUserUIState _appUserUIState = const AppUserUIState();
  AppUserUIState get appUserUIState => _appUserUIState;

  User? _firebaseUser;
  User? get firebaseUser => _firebaseUser;

  Future<bool> authenticateWithProvider(AuthCredential credential) async {
    _appUserUIState = _appUserUIState.copyWith(isLoading: true, error: '');
    notifyListeners();

    try {
      _firebaseUser = (await _fireAuth.signInWithCredential(credential)).user;
      _appUserUIState = _appUserUIState.copyWith(error: '');
      notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      logger.d(e.toString());

      _appUserUIState = _appUserUIState.copyWith(
        error: e.code == 'INVALID_LOGIN_CREDENTIALS'
            ? 'Email and Password do not match any account.'
            : e.message ?? 'An error occurred while signing in',
      );
      notifyListeners();
      return false;
    } catch (e) {
      logger.d(e.toString());
      _appUserUIState = _appUserUIState.copyWith(
        error: 'An error occurred while signing in',
      );
      notifyListeners();
      return false;
    }
  }

  Future<bool?> loginEmail({
    required String email,
    required String password,
  }) async {
    if (_appUserUIState.isLoading) return null;
    _appUserUIState = _appUserUIState.copyWith(isLoading: true, error: '');
    notifyListeners();

    bool auth = await authenticateWithProvider(
      EmailAuthProvider.credential(email: email, password: password),
    );

    if (!auth) {
      _appUserUIState = _appUserUIState.copyWith(isLoading: false);
      notifyListeners();
      return false;
    }

    if (firebaseUser != null) {
      _appUserUIState = _appUserUIState.copyWith(error: '', isLoading: false);
      notifyListeners();
      return true;
    } else {
      _appUserUIState = _appUserUIState.copyWith(
        error: 'Unknow user',
        isLoading: false,
      );
      notifyListeners();
      return false;
    }
  }

  Future<bool?> loginGoogle() async {
    if (_appUserUIState.isLoading) return null;
    _appUserUIState = _appUserUIState.copyWith(isLoading: true);
    notifyListeners();

    try {
      // Sign in with Google
      final GoogleSignInAccount? googleUser = await _googleSigner.signIn();

      if (googleUser == null) {
        // User canceled the sign-in
        _appUserUIState = _appUserUIState.copyWith(
          error: 'Google Sign In was canceled',
          isLoading: false,
        );
        notifyListeners();
        return false;
      }

      // Get authentication details
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      if (googleAuth.accessToken == null || googleAuth.idToken == null) {
        _appUserUIState = _appUserUIState.copyWith(
          error: 'Failed to get Google authentication tokens',
          isLoading: false,
        );
        notifyListeners();
        return false;
      }

      // Create Firebase credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with Firebase
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(credential);
      _firebaseUser = userCredential.user;

      if (_firebaseUser != null) {
        _appUserUIState = _appUserUIState.copyWith(error: '', isLoading: false);
        notifyListeners();
        return true;
      } else {
        _appUserUIState = _appUserUIState.copyWith(
          error: 'Unknown error occurred during Google Sign In',
          isLoading: false,
        );
        notifyListeners();
        return false;
      }
    } on PlatformException catch (e) {
      logger.e('Google Sign In Platform Error: ${e.code} - ${e.message}');
      String errorMessage;
      switch (e.code) {
        case 'sign_in_canceled':
          errorMessage = 'Google Sign In was canceled';
          break;
        case 'sign_in_failed':
          errorMessage = 'Google Sign In failed';
          break;
        case 'network_error':
          errorMessage = 'Network error occurred during Google Sign In';
          break;
        case 'sign_in_required':
          errorMessage = 'Google Sign In is required';
          break;
        default:
          errorMessage = e.message ?? 'An error occurred during Google Sign In';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } on FirebaseAuthException catch (e) {
      logger.e('Firebase Auth Error: ${e.code} - ${e.message}');
      String errorMessage;
      switch (e.code) {
        case 'account-exists-with-different-credential':
          errorMessage =
              'An account already exists with a different sign-in method';
          break;
        case 'invalid-credential':
          errorMessage = 'The Google Sign In credential is invalid';
          break;
        case 'operation-not-allowed':
          errorMessage = 'Google Sign In is not enabled for this app';
          break;
        case 'user-disabled':
          errorMessage = 'This user account has been disabled';
          break;
        case 'user-not-found':
          errorMessage = 'No user found for this Google account';
          break;
        case 'wrong-password':
          errorMessage = 'Wrong password provided for this Google account';
          break;
        case 'too-many-requests':
          errorMessage = 'Too many requests. Please try again later';
          break;
        default:
          errorMessage = e.message ?? 'An error occurred during sign in';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } catch (e) {
      logger.e('Unexpected Google Sign In Error: $e');
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred during Google Sign In',
      );
      notifyListeners();
      return false;
    }
  }

  Future<bool?> loginApple() async {
    if (_appUserUIState.isLoading) return null;
    _appUserUIState = _appUserUIState.copyWith(isLoading: true);
    notifyListeners();

    try {
      // Check if Apple Sign In is available
      if (!await SignInWithApple.isAvailable()) {
        _appUserUIState = _appUserUIState.copyWith(
          error: 'Apple Sign In is not available on this device',
          isLoading: false,
        );
        notifyListeners();
        return false;
      }

      // Request Apple Sign In
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      // Create Firebase credential
      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      // Sign in with Firebase
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        oauthCredential,
      );
      _firebaseUser = userCredential.user;

      // Update display name if available from Apple
      if (appleCredential.givenName != null ||
          appleCredential.familyName != null) {
        final displayName =
            '${appleCredential.givenName ?? ''} ${appleCredential.familyName ?? ''}'
                .trim();
        if (displayName.isNotEmpty) {
          await _firebaseUser?.updateDisplayName(displayName);
        }
      }

      if (_firebaseUser != null) {
        _appUserUIState = _appUserUIState.copyWith(error: '', isLoading: false);
        notifyListeners();
        return true;
      } else {
        _appUserUIState = _appUserUIState.copyWith(
          error: 'Unknown error occurred during Apple Sign In',
          isLoading: false,
        );
        notifyListeners();
        return false;
      }
    } on SignInWithAppleAuthorizationException catch (e) {
      logger.e('Apple Sign In Authorization Error: ${e.code} - ${e.message}');
      String errorMessage;
      switch (e.code) {
        case AuthorizationErrorCode.canceled:
          errorMessage = 'Apple Sign In was canceled';
          break;
        case AuthorizationErrorCode.failed:
          errorMessage = 'Apple Sign In failed';
          break;
        case AuthorizationErrorCode.invalidResponse:
          errorMessage = 'Invalid response from Apple Sign In';
          break;
        case AuthorizationErrorCode.notHandled:
          errorMessage = 'Apple Sign In request was not handled';
          break;
        case AuthorizationErrorCode.unknown:
        default:
          errorMessage = 'An unknown error occurred during Apple Sign In';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } on FirebaseAuthException catch (e) {
      logger.e('Firebase Auth Error: ${e.code} - ${e.message}');
      String errorMessage;
      switch (e.code) {
        case 'account-exists-with-different-credential':
          errorMessage =
              'An account already exists with a different sign-in method';
          break;
        case 'invalid-credential':
          errorMessage = 'The Apple Sign In credential is invalid';
          break;
        case 'operation-not-allowed':
          errorMessage = 'Apple Sign In is not enabled for this app';
          break;
        case 'user-disabled':
          errorMessage = 'This user account has been disabled';
          break;
        default:
          errorMessage = e.message ?? 'An error occurred during sign in';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } catch (e) {
      logger.e('Unexpected Apple Sign In Error: $e');
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred during Apple Sign In',
      );
      notifyListeners();
      return false;
    }
  }

  Future<bool?> registerCustomerWithEmail(
    String email,
    String password,
    String name,
  ) async {
    if (_appUserUIState.isLoading) return null;
    _appUserUIState = _appUserUIState.copyWith(isLoading: true);
    notifyListeners();
    try {
      User? user = (await _fireAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      )).user;

      if (user != null) {
        await user.updateDisplayName(name);
        await user.sendEmailVerification();
        _firebaseUser = user;
      }

      _appUserUIState = _appUserUIState.copyWith(isLoading: false);
      notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'weak-password':
          errorMessage = 'The password provided is too weak.';
          break;
        case 'email-already-in-use':
          errorMessage = 'An account already exists for this email.';
          break;
        case 'invalid-email':
          errorMessage = 'Please enter a valid email address.';
          break;
        default:
          errorMessage = e.message ?? 'An error occurred during registration';
      }

      _appUserUIState = _appUserUIState.copyWith(
        error: errorMessage,
        isLoading: false,
      );
      notifyListeners();
      return false;
    } catch (e) {
      _appUserUIState = _appUserUIState.copyWith(
        error: 'An unexpected error occurred: ${e.toString()}',
        isLoading: false,
      );
      notifyListeners();
      return false;
    }
  }

  Future<void> getAppUser() async {
    if (!isLoggedIn) return;
    try {
      AppUser response = await _repository.getAppUser();
      _appUserUIState = AppUserUIState(appUser: response);
      notifyListeners();
    } catch (e) {
      showError(msg: e.toString());
    }
  }

  Future<bool> updateUserName({required String name}) async {
    try {
      AppUser response = await _repository.updateUserName(name: name);
      await _firebaseUser?.updateDisplayName(name);
      _appUserUIState = AppUserUIState(appUser: response);
      notifyListeners();
      return true;
    } catch (e) {
      showError(msg: e.toString());
      return false;
    }
  }

  // Future<bool?> updateUserSettings({
  //   bool? chatBox,
  //   bool? travelIdeas,
  //   bool? rentals,
  //   bool? security,
  //   bool? sales,
  //   bool? upcomingDeals,
  // }) async {
  //   if (_appUserUIState.isLoading) return null;
  //   _appUserUIState = _appUserUIState.copyWith(isLoading: true);
  //   notifyListeners();
  //   try {
  //     AppUser response = await _repository.updateUserNotifSettings({
  //       'app_user_id': appUserUIState.appUser?.id,
  //       'chat_box': chatBox ?? appUserUIState.appUser?.notiSetting?.chatBox,
  //       'travel_ideas':
  //           travelIdeas ?? appUserUIState.appUser?.notiSetting?.travelIdeas,
  //       'rentals': rentals ?? appUserUIState.appUser?.notiSetting?.rentals,
  //       'security': security ?? appUserUIState.appUser?.notiSetting?.security,
  //       'sales': sales ?? appUserUIState.appUser?.notiSetting?.sales,
  //       'upcoming_deals':
  //           upcomingDeals ?? appUserUIState.appUser?.notiSetting?.upcomingDeals,
  //     });
  //     _appUserUIState = AppUserUIState(
  //       appUser: response,
  //       isLoggedIn: true,
  //       isLoading: false,
  //     );
  //     await subscribeNotificationsBaseOnUserSettings();
  //     notifyListeners();
  //     return true;
  //   } catch (e) {
  //     _appUserUIState = _appUserUIState.copyWith(
  //       isLoggedIn: false,
  //       isLoading: false,
  //       error: e.toString(),
  //     );
  //     notifyListeners();
  //     return false;
  //   }
  // }

  /// Links a Google account to the currently logged-in user
  Future<bool> linkGoogleAccount() async {
    if (_firebaseUser == null) {
      _appUserUIState = _appUserUIState.copyWith(
        error: 'No user is currently logged in',
        isLoading: false,
      );
      notifyListeners();
      return false;
    }

    _appUserUIState = _appUserUIState.copyWith(isLoading: true, error: '');
    notifyListeners();

    try {
      final GoogleSignInAccount? googleUser = await _googleSigner.signIn();
      if (googleUser == null) {
        _appUserUIState = _appUserUIState.copyWith(isLoading: false);
        notifyListeners();
        return false;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseUser!.linkWithCredential(credential);

      // Refresh the Firebase user to get updated provider data
      await _firebaseUser!.reload();
      _firebaseUser = _fireAuth.currentUser;

      _appUserUIState = _appUserUIState.copyWith(isLoading: false);
      notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      logger.e(
        'Firebase Auth Error during Google linking: ${e.code} - ${e.message}',
      );
      String errorMessage;
      switch (e.code) {
        case 'provider-already-linked':
          errorMessage = 'Google account is already linked to this user';
          break;
        case 'invalid-credential':
          errorMessage = 'The Google credential is invalid';
          break;
        case 'credential-already-in-use':
          errorMessage =
              'This Google account is already linked to another user';
          break;
        case 'email-already-in-use':
          errorMessage =
              'The email address is already in use by another account';
          break;
        default:
          errorMessage =
              e.message ?? 'An error occurred while linking Google account';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } catch (e) {
      logger.e('Unexpected error during Google linking: $e');
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred while linking Google account',
      );
      notifyListeners();
      return false;
    }
  }

  /// Links an Apple account to the currently logged-in user
  Future<bool> linkAppleAccount() async {
    if (_firebaseUser == null) {
      _appUserUIState = _appUserUIState.copyWith(
        error: 'No user is currently logged in',
        isLoading: false,
      );
      notifyListeners();
      return false;
    }

    _appUserUIState = _appUserUIState.copyWith(isLoading: true, error: '');
    notifyListeners();

    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      await _firebaseUser!.linkWithCredential(oauthCredential);

      // Update display name if available
      if (appleCredential.givenName != null &&
          appleCredential.familyName != null) {
        final displayName =
            '${appleCredential.givenName} ${appleCredential.familyName}';
        await _firebaseUser!.updateDisplayName(displayName);
      }

      // Refresh the Firebase user to get updated provider data
      await _firebaseUser!.reload();
      _firebaseUser = _fireAuth.currentUser;

      _appUserUIState = _appUserUIState.copyWith(isLoading: false);
      notifyListeners();
      return true;
    } on SignInWithAppleAuthorizationException catch (e) {
      logger.e('Apple Sign In Authorization Error: ${e.code} - ${e.message}');
      String errorMessage;
      switch (e.code) {
        case AuthorizationErrorCode.canceled:
          _appUserUIState = _appUserUIState.copyWith(isLoading: false);
          notifyListeners();
          return false;
        case AuthorizationErrorCode.failed:
          errorMessage = 'Apple Sign In failed';
          break;
        case AuthorizationErrorCode.invalidResponse:
          errorMessage = 'Invalid response from Apple Sign In';
          break;
        case AuthorizationErrorCode.notHandled:
          errorMessage = 'Apple Sign In request was not handled';
          break;
        case AuthorizationErrorCode.unknown:
        default:
          errorMessage = 'An unknown error occurred during Apple Sign In';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } on FirebaseAuthException catch (e) {
      logger.e(
        'Firebase Auth Error during Apple linking: ${e.code} - ${e.message}',
      );
      String errorMessage;
      switch (e.code) {
        case 'provider-already-linked':
          errorMessage = 'Apple account is already linked to this user';
          break;
        case 'invalid-credential':
          errorMessage = 'The Apple credential is invalid';
          break;
        case 'credential-already-in-use':
          errorMessage = 'This Apple account is already linked to another user';
          break;
        case 'email-already-in-use':
          errorMessage =
              'The email address is already in use by another account';
          break;
        default:
          errorMessage =
              e.message ?? 'An error occurred while linking Apple account';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } catch (e) {
      logger.e('Unexpected error during Apple linking: $e');
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred while linking Apple account',
      );
      notifyListeners();
      return false;
    }
  }

  /// Links an email/password account to the currently logged-in user
  Future<bool> linkEmailPasswordAccount(String email, String password) async {
    if (_firebaseUser == null) {
      _appUserUIState = _appUserUIState.copyWith(
        error: 'No user is currently logged in',
        isLoading: false,
      );
      notifyListeners();
      return false;
    }

    _appUserUIState = _appUserUIState.copyWith(isLoading: true, error: '');
    notifyListeners();

    try {
      final credential = EmailAuthProvider.credential(
        email: email,
        password: password,
      );
      await _firebaseUser!.linkWithCredential(credential);

      // Refresh the Firebase user to get updated provider data
      await _firebaseUser!.reload();
      _firebaseUser = _fireAuth.currentUser;

      _appUserUIState = _appUserUIState.copyWith(isLoading: false);
      notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      logger.e(
        'Firebase Auth Error during email/password linking: ${e.code} - ${e.message}',
      );
      String errorMessage;
      switch (e.code) {
        case 'provider-already-linked':
          errorMessage = 'Email/password is already linked to this user';
          break;
        case 'invalid-credential':
          errorMessage = 'The email or password is invalid';
          break;
        case 'credential-already-in-use':
          errorMessage = 'This email is already linked to another user';
          break;
        case 'email-already-in-use':
          errorMessage =
              'The email address is already in use by another account';
          break;
        case 'weak-password':
          errorMessage = 'The password is too weak';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is invalid';
          break;
        default:
          errorMessage =
              e.message ?? 'An error occurred while linking email/password';
      }
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: errorMessage,
      );
      notifyListeners();
      return false;
    } catch (e) {
      logger.e('Unexpected error during email/password linking: $e');
      _appUserUIState = _appUserUIState.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred while linking email/password',
      );
      notifyListeners();
      return false;
    }
  }

  bool get isLoggedIn {
    return appUserUIState.appUser != null || firebaseUser != null;
  }

  AppUser? get appUser {
    return appUserUIState.appUser;
  }

  String get userName =>
      appUserUIState.appUser?.name ?? firebaseUser?.displayName ?? '';

  String get userImage =>
      appUserUIState.appUser?.avatarUrl ?? firebaseUser?.photoURL ?? '';

  String get emailOrPhone =>
      appUserUIState.appUser?.email ??
      firebaseUser?.email ??
      firebaseUser?.phoneNumber ??
      '';

  Future<void> signOut(BuildContext context) async {
    /// Clear all user based data
    context.read<PushNotificationNotifier>().clearToken();

    _firebaseUser = null;
    _appUserUIState = const AppUserUIState();
    _fireAuth.signOut();
    _googleSigner.signOut();
    prefs.clear();
  }
}
