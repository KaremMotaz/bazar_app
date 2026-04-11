import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRating extends StatelessWidget {
  final double starSize;
  final double starSpacing;
  final double rating;

  const CustomRating({
    super.key,
    required this.rating,
    this.starSize = 22,
    this.starSpacing = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: starSpacing),
          child: SvgPicture.asset(
            AppAssets.starIcon,
            height: starSize,
            colorFilter: ColorFilter.mode(
              rating > index ? AppColors.goldColor : AppColors.black900,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
