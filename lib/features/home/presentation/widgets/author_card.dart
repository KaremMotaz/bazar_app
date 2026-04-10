import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../data/models/authors_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthorCard extends StatelessWidget {
  final AuthorModel author;
  const AuthorCard({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.authorDetailsView);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 51,
            backgroundColor: AppColors.lightGray,
            backgroundImage: AssetImage(author.image),
          ),
          const SizedBox(height: 10),
          Text(author.name, style: AppStyles.medium16),
          const SizedBox(height: 4),
          Text(
            author.spesiality,
            style: AppStyles.regular14.copyWith(color: AppColors.gray),
          ),
        ],
      ),
    );
  }
}
