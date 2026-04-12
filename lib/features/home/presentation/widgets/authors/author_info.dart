import 'package:bazar_app/core/helpers/constants.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/authors_model.dart';
import 'author_rating.dart';
import 'package:flutter/material.dart';

class AuthorInfo extends StatelessWidget {
  final AuthorModel author;
  const AuthorInfo({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Column(
        children: [
          CircleAvatar(
            radius: 51,
            backgroundColor: AppColors.lightGray,
            backgroundImage: AssetImage(author.image),
          ),
          SizedBox(height: 8),
          Text(
            author.spesiality,
            style: AppStyles.regular16.copyWith(color: AppColors.black900),
          ),
          SizedBox(height: 10),
          Text(author.name, style: AppStyles.bold20),
          SizedBox(height: 22),
          AuthorRating(rating: author.rating),
        ],
      ),
    );
  }
}
