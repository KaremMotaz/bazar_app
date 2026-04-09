import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class ResendOtpWidget extends StatelessWidget {
  const ResendOtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "If you didn’t receive a code?",
            style: AppStyles.semiBold14.copyWith(color: AppColors.appGray),
          ),
          const TextSpan(text: " "),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {},
            text: "Resend",
            style: AppStyles.semiBold14.copyWith(color: AppColors.mainColor),
          ),
        ],
      ),
    );
  }
}
