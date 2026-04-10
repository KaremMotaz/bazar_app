import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthorRating extends StatelessWidget {
  const AuthorRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: SvgPicture.asset(AppAssets.starIcon, height: 22),
            ),
          ),
        ),
        SizedBox(width: 4),
        Text("(4.5)", style: AppStyles.semiBold16),
      ],
    );
  }
}
