import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "Have an account?",
            style: AppStyles.medium16.copyWith(color: AppColors.appGray),
          ),
          const TextSpan(text: " "),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(Routes.signInView);
              },
            text: "Sign In",
            style: AppStyles.medium16.copyWith(color: AppColors.mainColor),
          ),
        ],
      ),
    );
  }
}
