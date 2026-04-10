import 'package:bazar_app/core/enums/verification_type.dart';
import 'package:bazar_app/core/extensions/string_extensions.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:bazar_app/features/auth/presentation/widgets/pin_input_form.dart';
import 'package:bazar_app/features/home/presentation/widgets/custom_back_appbar.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/constants.dart';

class OtpVerificationView extends StatelessWidget {
  final VerificationType type;
  final String value;
  const OtpVerificationView({
    super.key,
    required this.type,
    required this.value,
  });

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
            children: [
              Text(
                "Verification ${type.name.capitalize()}",
                style: AppStyles.bold24,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Please enter the code we just sent to ${type == VerificationType.phone ? "phone number" : type.name}",
                      style: AppStyles.regular16.copyWith(
                        color: AppColors.appGray,
                      ),
                    ),
                    const TextSpan(text: " "),
                    TextSpan(text: value, style: AppStyles.regular16),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              PinInputForm(type: type),
            ],
          ),
        ),
      ),
    );
  }
}
