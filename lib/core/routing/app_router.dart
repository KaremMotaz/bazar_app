import 'package:bazar_app/core/enums/verification_type.dart';
import 'package:bazar_app/features/auth/presentation/views/add_phone_number_view.dart';
import 'package:bazar_app/features/auth/presentation/views/congratulation_view.dart';
import 'package:bazar_app/features/auth/presentation/views/login_view.dart';
import 'package:bazar_app/features/auth/presentation/views/otp_verification_view.dart';
import 'package:bazar_app/features/auth/presentation/views/reset_password_view.dart';
import 'package:bazar_app/features/auth/presentation/views/signup_view.dart';
import 'package:bazar_app/features/auth/presentation/views/terms_and_data_policy_view.dart';
import 'package:bazar_app/features/home/views/home_view.dart';
import 'package:bazar_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:bazar_app/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: Routes.splashView,
      routes: [
        GoRoute(
          path: Routes.splashView,
          builder: (context, state) {
            return const SplashView();
          },
        ),
        GoRoute(
          path: Routes.onboardingView,
          builder: (context, state) {
            return const OnboardingView();
          },
        ),
        GoRoute(
          path: Routes.signInView,
          builder: (context, state) {
            return const LoginView();
          },
        ),
        GoRoute(
          path: Routes.signUpView,
          builder: (context, state) {
            return const SignupView();
          },
        ),
        GoRoute(
          path: Routes.termsAndDataPolicyView,
          builder: (context, state) {
            return const TermsAndDataPolicyView();
          },
        ),
        GoRoute(
          path: Routes.forgotPasswordView,
          builder: (context, state) {
            return const ResetPasswordView();
          },
        ),
        GoRoute(
          path: Routes.otpVerificationView,
          builder: (context, state) {
            final data = state.extra as Map<String, dynamic>;
            final VerificationType type = data['type'];
            final String value = data['value'];
            return OtpVerificationView(type: type, value: value);
          },
        ),
        GoRoute(
          path: Routes.addPhoneNumberView,
          builder: (context, state) {
            return const AddPhoneNumberView();
          },
        ),
        GoRoute(
          path: Routes.congratulationView,
          builder: (context, state) {
            return const CongratulationView();
          },
        ),
        GoRoute(
          path: Routes.homeView,
          builder: (context, state) {
            return const HomeView();
          },
        ),
      ],
    );
  }
}
