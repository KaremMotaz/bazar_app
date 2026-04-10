import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:bazar_app/features/home/data/models/authors_model.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  final AuthorModel author;
  const AuthorCard({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(author.image, height: 102, width: 102),
        const SizedBox(height: 10),
        Text(author.name, style: AppStyles.medium16),
        const SizedBox(height: 4),
        Text(
          author.spesiality,
          style: AppStyles.regular14.copyWith(color: AppColors.gray),
        ),
      ],
    );
  }
}
