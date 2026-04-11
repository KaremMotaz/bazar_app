import 'package:bazar_app/core/theming/app_colors.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthorRating extends StatelessWidget {
  final double rating;
  final bool isCentered;
  const AuthorRating({super.key, required this.rating, this.isCentered = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isCentered
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: SvgPicture.asset(
                AppAssets.starIcon,
                height: 22,
                colorFilter: ColorFilter.mode(
                  rating > index ? AppColors.goldColor : AppColors.black900,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 4),
        Text("($rating)", style: AppStyles.semiBold16),
      ],
    );
  }
}
