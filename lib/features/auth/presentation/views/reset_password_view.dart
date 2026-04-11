import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../home/presentation/widgets/shared/custom_back_appbar.dart';
import '../widgets/reset_password_form.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
