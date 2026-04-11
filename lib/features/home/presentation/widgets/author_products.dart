import '../../../../core/theming/app_styles.dart';
import 'products_grid_view.dart';
import 'package:flutter/material.dart';

class AuthorProducts extends StatelessWidget {
  const AuthorProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Products", style: AppStyles.bold16),
        ProductsGridView(),
      ],
    );
  }
}
