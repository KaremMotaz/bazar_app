import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.push(Routes.forgotPasswordView);
      },
      child: Text(
        "Forgot Password?",
        style: AppStyles.semiBold14.copyWith(color: AppColors.mainColor),
      ),
    );
  }
}
