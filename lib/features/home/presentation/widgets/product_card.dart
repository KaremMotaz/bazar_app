import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../data/models/book_model.dart';

class ProductCard extends StatelessWidget {
  final BookModel book;
  const ProductCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(book.image),
        ),
        const SizedBox(height: 10),
        Text(book.title, style: AppStyles.medium16),
        const SizedBox(height: 4),
        Text(
          "\$${book.price}",
          style: AppStyles.bold14.copyWith(color: AppColors.mainColor),
        ),
      ],
    );
  }
}
