import 'package:bazar_app/core/helpers/constants.dart';
import '../../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class AuthorProductsSliverHeader extends StatelessWidget {
  const AuthorProductsSliverHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: kAppHorizontalPadding),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Products", style: AppStyles.bold16),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
