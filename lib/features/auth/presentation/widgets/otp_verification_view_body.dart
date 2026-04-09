import 'package:bazar_app/features/auth/presentation/widgets/pin_input_form.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class OTPVerificationViewBody extends StatelessWidget {
  const OTPVerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          Text("Verification Email", style: AppStyles.bold24),
          Text(
            "Please enter the code we just sent to email",
            style: AppStyles.regular16.copyWith(color: AppColors.appGray),
          ),
          Text("Johndoe@gmail.com", style: AppStyles.regular16),
          const SizedBox(height: 40),
          PinInputForm(),
        ],
      ),
    );
  }
}
