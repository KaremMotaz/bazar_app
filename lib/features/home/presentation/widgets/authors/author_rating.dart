import '../shared/custom_rating.dart';
import '../../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';

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
        CustomRating(rating: rating),
        SizedBox(width: 4),
        Text("($rating)", style: AppStyles.semiBold16),
      ],
    );
  }
}
