import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookHeaderSection extends StatelessWidget {
  final String title;

  const BookHeaderSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.bold20),
        SvgPicture.asset(AppAssets.heartIcon, height: 19),
      ],
    );
  }
}
