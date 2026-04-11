import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomSectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomSectionHeader({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppStyles.bold20),
          InkWell(
            onTap: onTap,
            child: Text(
              "See all",
              style: AppStyles.bold14.copyWith(color: AppColors.mainColor),
            ),
          ),
        ],
      ),
    );
  }
}
