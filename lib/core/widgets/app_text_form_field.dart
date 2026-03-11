import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    required this.hintText,
    this.suffixIcon,
    this.backgroundColor,
    this.isObscureText,
    this.textStyle,
    required this.validator,
    this.textInputType,
    this.minLines,
    this.maxLines,
  });
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String? hintText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final bool? isObscureText;
  final TextStyle? textStyle;
  final Function(String?) validator;
  final TextInputType? textInputType;
  final int? minLines;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType ?? TextInputType.name,
      controller: controller,
      minLines: minLines ?? 1,
      maxLines: isObscureText == true ? 1 : maxLines,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        focusedBorder:
            focusedBorder ??
            buildOutLineInputBorder(borderColor: Color(0xffFAFAFA)),
        enabledBorder:
            enabledBorder ??
            buildOutLineInputBorder(borderColor: Color(0xffFAFAFA)),
        errorBorder: buildOutLineInputBorder(borderColor: AppColors.red),
        focusedErrorBorder: buildOutLineInputBorder(borderColor: AppColors.red),
        hintStyle: AppStyles.regular16.copyWith(color: Color(0xffB8B8B8)),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? Color(0xffFAFAFA),
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: textStyle ?? AppStyles.medium16,
      validator: (value) {
        return validator(value);
      },
    );
  }
}

OutlineInputBorder buildOutLineInputBorder({required Color borderColor}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: borderColor, width: 1.3),
    borderRadius: BorderRadius.circular(16),
  );
}
