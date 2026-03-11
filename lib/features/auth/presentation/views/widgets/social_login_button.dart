import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.title,
    required this.imageLink,
    required this.onPressed,
  });
  final String title;
  final String imageLink;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.lightGray),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        padding: const WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 12),
        ),
        fixedSize: const WidgetStatePropertyAll(Size(double.maxFinite, 60)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imageLink, height: 16),
          const SizedBox(width: 14),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold15.copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
