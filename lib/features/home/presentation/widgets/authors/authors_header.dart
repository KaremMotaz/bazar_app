import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class AuthorsHeader extends StatelessWidget {
  const AuthorsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kAppHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Check the authors",
            style: AppStyles.regular16.copyWith(color: Colors.grey.shade500),
          ),
          const SizedBox(height: 10),
          Text(
            "Authors",
            style: AppStyles.bold20.copyWith(color: AppColors.mainColor),
          ),
        ],
      ),
    );
  }
}
