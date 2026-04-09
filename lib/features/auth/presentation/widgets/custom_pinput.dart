import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomPinput extends StatelessWidget {
  const CustomPinput({super.key, required this.otpController});

  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      controller: otpController,
      focusedPinTheme: PinTheme(
        width: 52,
        height: 52,
        margin: EdgeInsets.only(right: 6),
        textStyle: AppStyles.bold24,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          border: Border.all(color: AppColors.mainColor, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      errorBuilder: (errorText, pin) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              errorText ?? '',
              style: AppStyles.regular14.copyWith(color: AppColors.red),
            ),
          ),
        );
      },
      defaultPinTheme: PinTheme(
        width: 52,
        height: 52,
        margin: EdgeInsets.only(right: 6),
        textStyle: AppStyles.bold24,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your pin';
        }
        return null;
      },
    );
  }
}
