import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import 'custom_icon_button.dart';
import 'package:flutter/material.dart';

class BookQuantityAndPrice extends StatelessWidget {
  final double price;

  const BookQuantityAndPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade50,
          ),
          child: Row(
            spacing: 16,
            children: [
              CustomIconButton(
                onPressed: () {},
                iconPath: AppAssets.minusIcon,
                backgroundColor: Colors.grey.shade200,
                iconColor: Colors.grey.shade500,
              ),
              Text("1", style: AppStyles.medium16),
              CustomIconButton(
                onPressed: () {},
                iconPath: AppAssets.addIcon,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Text(
          "\$$price",
          style: AppStyles.medium16.copyWith(color: AppColors.mainColor),
        ),
      ],
    );
  }
}
