import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:bazar_app/features/auth/presentation/widgets/already_have_an_account.dart';
import 'package:bazar_app/features/auth/presentation/widgets/signup_form.dart';
import 'package:bazar_app/features/auth/presentation/widgets/terms_and_data_policy_widget.dart';
import 'package:bazar_app/features/home/presentation/widgets/custom_back_appbar.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppbar(),
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
                Text("Sign Up", style: AppStyles.bold24),
                const SizedBox(height: 8),
                Text(
                  "Create account and choose favorite menu",
                  style: AppStyles.regular16.copyWith(color: AppColors.appGray),
                ),
                const SizedBox(height: 24),
                const SignUpForm(),
                const SizedBox(height: 25),
                const Align(
                  alignment: AlignmentDirectional.center,
                  child: AlreadyHaveAnAccount(),
                ),
                // Spacer(),
                SizedBox(height: 20),
                TermsAndDataPolicyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
