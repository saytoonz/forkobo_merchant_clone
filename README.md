# Forkobo Merchant (Flutter)

This is the Forkobo Merchant mobile app built with Flutter. Merchants use it to manage stores, view analytics, configure payment methods, and request withdrawals. The app integrates with Forkobo’s backend APIs and Firebase Authentication.

**Highlights**
- Flutter app targeting iOS and Android
- Firebase Authentication (Bearer token) with `X-Firebase-UID` header
- GoRouter-based navigation and modular screens
- Provider + ChangeNotifier for state management
- Dio HTTP client with repository pattern
- Shorebird OTA code push setup
- Localized assets and theming

**Contents**
- Quick Start
- Project Structure
- Architecture
- Environments and Configuration
- Key Features
- API Endpoints and Models
- Development Workflow
- Testing and Quality
- Troubleshooting
- Handoff Checklist

**Quick Start**
- Prerequisites:
  - `Flutter` 3.x and `Dart` SDK installed
  - Xcode with CocoaPods for iOS (`brew install cocoapods`)
  - Android Studio + SDK/JDK for Android
  - A Firebase project configured (Google services files already included)
- Setup:
  - `flutter pub get`
  - iOS pods: `cd ios && pod install && cd ..`
  - Run: `flutter run` (choose iOS Simulator or Android Emulator)
- Sign-in:
  - The app expects a Firebase-authenticated user. Use the app’s Login flow to authenticate (Google Sign-In is supported).

**Project Structure**
- `lib/`
  - `app.dart` — App root configuration and theme
  - `di.dart` — Dependency injection (GetIt), Firebase init, Dio, Shorebird, Logger, SharedPreferences, PackageInfo
  - `routes.dart` — GoRouter routes and names
  - `entity/` — Data models and response wrappers
    - `payment_method.dart`, `payment_method_type.dart`, `withdrawal.dart`, `dashboard.dart`, etc.
  - `presentation/` — UI layer
    - `screens/` — Feature screens (withdrawals, onboarding, index, login)
    - `notifiers/` — ChangeNotifiers (e.g., `PaymentMethodsNotifier`, `WithdrawalRequestNotifier`)
    - `widget/` — Shared/reusable widgets
  - `repository/` — Repository interface and Dio implementation
    - `repository.dart`, `repository_impl.dart`
  - `utils/` — Theme, enums, extensions, constants
- `assets/`
  - `fonts/`, `svg/`, `png/`, `lottie/`, `translations/`
- `android/`, `ios/` — Native project folders with Google services files

**Architecture**
- Navigation: `go_router` with named routes defined in `routes.dart`.
  - `index` → `withdrawals` → `request` and `payment-methods`
- State Management: `provider` + `ChangeNotifier`.
  - Notifiers live in `lib/presentation/notifiers/` and expose UI-friendly state.
- Data Access: Repository pattern with `Dio`.
  - `RepositoryImpl` centralizes API calls and headers (`Authorization: Bearer <firebase token>`, `X-Firebase-UID`).
- Dependency Injection: `GetIt` (`lib/di.dart`).
  - Initializes Firebase, registers singletons, and injects the repository.
- Theming and Design: `utils/theme_data.dart` and `utils/app_colors.dart`.
- Localization: Basic JSON translations in `assets/translations/`.

**Environments and Configuration**
- Base URL: Defined in `lib/di.dart`.
  - Dev: `https://dev-api.forkobo.tech/api`
  - To point to Production, update the `Dio(BaseOptions(baseUrl: ...))` in `di.dart`.
- Authentication:
  - Firebase initialized via `DefaultFirebaseOptions`. The app reads the current user token and sets the `Authorization` header as `Bearer <token>`.
  - `X-Firebase-UID` is also sent on requests.
- Google Services:
  - Android: `android/app/google-services.json` (already present)
  - iOS: `ios/Runner/GoogleService-Info.plist` (already present)
- Shorebird OTA:
  - Registered as `ShorebirdUpdater` in DI. Use Shorebird CLI if doing releases.

**Key Features**
- Withdrawals
  - View withdrawals history (screen: `WithdrawalsScreen`)
  - Request a withdrawal (screen: `RequestWithdrawalScreen`)
- Payment Methods
  - List user’s payment methods (`PaymentMethodsScreen`) with a clear Primary indicator
  - Add payment methods (dynamic required fields based on type)
- Stores
  - List and update store details and categories
- Dashboard
  - Analytics and summary data for the merchant

**API Endpoints and Models**
- Headers on all calls:
  - `Content-Type: application/json`
  - `Authorization: Bearer <Firebase ID token>`
  - `X-Firebase-UID: <Firebase UID>`
- Common endpoints (implemented in `RepositoryImpl`):
  - User
    - `GET /user/profile` → `AppUser`
    - `PUT /user/name` → `AppUser`
    - `PUT /user/fcm-token` → boolean
  - Dashboard
    - `GET /merchant/dashboard/analytics?period=<range>` → `DashboardResponse`
  - Stores
    - `GET /merchant/stores` → `List<MerchantStore>`
    - `GET /merchant/stores/{storeId}/details` → `StoreDetailsResponse`
    - `GET /merchant/stores/{storeId}/activities?page=&per_page=` → `List<StoreActivity>`
    - `PUT /merchant/stores/{storeId}` → `MerchantStore`
  - Categories
    - `GET /categories` → `List<Category>`
  - Payment Methods
    - `GET /merchant/payment-methods/types` → `List<PaymentMethodType>`
    - `GET /merchant/payment-methods` → `List<PaymentMethod>`
    - `POST /merchant/payment-methods` → `PaymentMethod`
  - Withdrawals
    - `GET /merchant/withdrawals?page=&per_page=` → `List<Withdrawal>`
    - `POST /merchant/withdrawals` → `Withdrawal`
- Models live under `lib/entity/` with `.fromJson` constructors.

**Development Workflow**
- Run locally:
  - `flutter run -d ios`
  - `flutter run -d android`
- Analyze and lint:
  - `flutter analyze` (rules in `analysis_options.yaml`)
- Hot reload:
  - Use Flutter’s standard hot reload during development
- Adding a new API call:
  - Add method signature to `lib/repository/repository.dart`
  - Implement HTTP call in `lib/repository/repository_impl.dart`
  - Create/update model in `lib/entity/`
  - Expose state via a `ChangeNotifier` (under `lib/presentation/notifiers/`)
  - Bind the notifier in the screen with `Provider`

**Testing and Quality**
- Static analysis: `flutter analyze` must pass (no errors)
- Widget tests: `test/widget_test.dart` (expand as needed)
- Code style: adhere to existing patterns and naming; prefer small, focused widgets and notifiers

**Troubleshooting**
- Firebase login issues:
  - Confirm Google services files are correctly placed for each platform
  - Ensure sign-in in the app to populate the `Authorization` header
- 401 or missing token:
  - Check that `FirebaseAuth.currentUser` exists; run the login flow
- Incorrect API base URL:
  - Update `lib/di.dart` Dio BaseOptions to target the desired environment
- iOS build failures (Pods):
  - Run `cd ios && pod repo update && pod install`
- Build context across async warning:
  - Some legacy screens may show `use_build_context_synchronously` info; follow Flutter best practices when refactoring

**Handoff Checklist**
- Access and credentials
  - Firebase project access (Console) and Shorebird CLI if releasing
  - Backend API access and environment URL (dev/prod)
- Local setup verified on both platforms
  - iOS: open `ios/Runner.xcworkspace` if adjusting signing
  - Android: ensure SDKs installed and emulator configured
- Key areas to review
  - `lib/repository/repository_impl.dart` for endpoints and headers
  - `lib/presentation/notifiers/` for state flow
  - `lib/presentation/screens/withdrawals/` for withdrawals and payment methods
  - `lib/routes.dart` for navigation map
- Contributing guidelines
  - Keep changes targeted and small
  - Update models and repository together
  - Add basic tests for new UI logic where feasible

If any environment or product requirements change (e.g., new headers, base URL, or auth method), update `lib/di.dart` and the repository headers accordingly, then verify with `flutter analyze` and a quick manual run.