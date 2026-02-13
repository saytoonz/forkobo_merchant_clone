import '../app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appuser_ui_state.freezed.dart';

@freezed
class AppUserUIState with _$AppUserUIState {
  const AppUserUIState._();
  const factory AppUserUIState({
    @Default(false) bool isLoggedIn,
    @Default(false) bool isLoading,
    @Default('') String error,
    AppUser? appUser,
  }) = _AppUserUIState;
}
