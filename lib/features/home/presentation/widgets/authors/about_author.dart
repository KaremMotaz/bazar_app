import 'package:bazar_app/core/helpers/constants.dart';

import '../../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class AboutAuthor extends StatelessWidget {
  final String about;
  const AboutAuthor({super.key, required this.about});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About", style: AppStyles.bold16),
          Text(
            about,
            style: AppStyles.regular16.copyWith(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
