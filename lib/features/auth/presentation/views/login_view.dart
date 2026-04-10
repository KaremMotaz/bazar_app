import 'package:bazar_app/features/auth/presentation/widgets/dont_have_an_account.dart';
import 'package:bazar_app/features/auth/presentation/widgets/login_form.dart';
import 'package:bazar_app/features/auth/presentation/widgets/or_divider.dart';
import 'package:bazar_app/features/auth/presentation/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kAppHorizontalPadding,
            vertical: kAppVerticalPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text("Welcome Back 👋", style: AppStyles.bold24),
                const SizedBox(height: 8),
                Text(
                  "Sign to your account",
                  style: AppStyles.regular16.copyWith(color: AppColors.appGray),
                ),
                const SizedBox(height: 32),
                const SignInForm(),
                const SizedBox(height: 25),
                const DontHaveAnAccount(),
                const SizedBox(height: 25),
                const OrDivider(),
                const SizedBox(height: 20),
                SocialLoginButton(
                  title: "Sign in with Google",
                  imageLink: AppAssets.googleIcon,
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                SocialLoginButton(
                  title: "Sign in with Apple",
                  imageLink: AppAssets.appleIcon,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
