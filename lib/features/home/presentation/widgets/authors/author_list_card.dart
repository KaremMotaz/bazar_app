import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/authors_model.dart';

class AuthorListCard extends StatelessWidget {
  final AuthorModel author;
  const AuthorListCard({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.authorDetailsView, extra: author);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: AppColors.lightGray,
            backgroundImage: AssetImage(author.image),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(author.name, style: AppStyles.bold18),
                const SizedBox(height: 6),
                Text(
                  author.about,
                  style: AppStyles.medium14.copyWith(color: AppColors.gray),
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
