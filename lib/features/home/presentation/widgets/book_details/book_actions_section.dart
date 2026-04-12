import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class BookActionsSection extends StatelessWidget {
  const BookActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: AppTextButton(
            onPressed: () {},
            withSize: false,
            buttonText: "Continue shopping",
            verticalPadding: 12,
            textStyle: AppStyles.bold16.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AppTextButton(
            onPressed: () {},
            withSize: false,
            verticalPadding: 12,
            backgroundColor: Colors.grey.shade50,
            buttonText: "View cart",
            textStyle: AppStyles.bold16.copyWith(
              color: AppColors.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}