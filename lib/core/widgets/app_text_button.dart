import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    this.buttonText,
    this.textStyle,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    this.child,
    this.withSize = true,
  });
  final String? buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final Widget? child;
  final bool withSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 48),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(
          backgroundColor ?? AppColors.mainColor,
        ),
        padding: WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12,
            vertical: verticalPadding ?? 14,
          ),
        ),
        fixedSize: withSize
            ? WidgetStatePropertyAll(
                Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 55),
              )
            : null,
      ),
      child:
          child ??
          Text(
            buttonText ?? "Continue",
            style:
                textStyle ?? AppStyles.bold14.copyWith(color: AppColors.white),
          ),
    );
  }
}
