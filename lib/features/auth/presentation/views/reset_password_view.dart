import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:bazar_app/features/auth/presentation/widgets/reset_password_form.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kAppHorizontalPadding,
            vertical: kAppVerticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Reset Password", style: AppStyles.regular14),
              ResetPasswordForm(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
