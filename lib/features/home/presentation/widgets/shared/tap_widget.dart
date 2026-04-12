import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class TapWidget extends StatelessWidget {
  final String tab;
  final bool isSelected;
  const TapWidget({super.key, required this.tab, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tab,
          style: isSelected
              ? AppStyles.bold18
              : AppStyles.regular16.copyWith(color: Colors.grey.shade500),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          height: 2,
          width: isSelected ? 24 : 0,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}
