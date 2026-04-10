import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLetter,
    required this.hasNumber,
    required this.hasMinLength,
  });
  final bool hasLetter;
  final bool hasNumber;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("Minimum 8 characters", hasMinLength),
        const SizedBox(height: 4),
        buildValidationRow("Atleast 1 number (1-9)", hasNumber),
        const SizedBox(height: 4),
        buildValidationRow(
          "At least lowercase or uppercase letters",
          hasLetter,
        ),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        Icon(
          hasValidated ? Icons.check : Icons.close,
          color: hasValidated ? AppColors.appGray : AppColors.red,
          size: 16,
        ),
        const SizedBox(width: 5),
        Text(text, style: AppStyles.regular14),
      ],
    );
  }
}
