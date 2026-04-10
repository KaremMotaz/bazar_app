import 'package:bazar_app/core/enums/verification_type.dart';
import 'package:bazar_app/features/auth/presentation/views/add_phone_number_view.dart';
import 'package:bazar_app/features/auth/presentation/views/congratulation_view.dart';
import 'package:bazar_app/features/auth/presentation/views/login_view.dart';
import 'package:bazar_app/features/auth/presentation/views/otp_verification_view.dart';
import 'package:bazar_app/features/auth/presentation/views/reset_password_view.dart';
import 'package:bazar_app/features/auth/presentation/views/signup_view.dart';
import 'package:bazar_app/features/auth/presentation/views/terms_and_data_policy_view.dart';
import 'package:bazar_app/features/home/presentation/views/notification_view.dart';
import 'package:bazar_app/features/home/presentation/views/search_view.dart';
import 'package:bazar_app/features/main/presentation/main_view.dart';
import 'package:bazar_app/features/main/presentation/manager/main_cubit/main_cubit.dart';
import 'package:bazar_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:bazar_app/features/splash/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: Routes.mainView,
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
          path: Routes.mainView,
          builder: (context, state) {
            return BlocProvider(
              create: (context) => MainCubit(),
              child: const MainView(),
            );
          },
        ),
        GoRoute(
          path: Routes.searchView,
          builder: (context, state) {
            return const SearchView();
          },
        ),
        GoRoute(
          path: Routes.notificationView,
          builder: (context, state) {
            return const NotificationView();
          },
        ),
      ],
    );
  }
}
