import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

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
