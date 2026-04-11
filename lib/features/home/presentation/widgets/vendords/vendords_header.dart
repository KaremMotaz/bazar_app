import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class VendordsHeader extends StatelessWidget {
  const VendordsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kAppHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Vendors",
            style: AppStyles.regular16.copyWith(color: Colors.grey.shade500),
          ),
          const SizedBox(height: 10),
          Text(
            "Vendors",
            style: AppStyles.bold20.copyWith(color: AppColors.mainColor),
          ),
        ],
      ),
    );
  }
}
