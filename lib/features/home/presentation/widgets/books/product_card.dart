import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/book_model.dart';
import 'book_details_content.dart';

class ProductCard extends StatelessWidget {
  final BookModel book;
  const ProductCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.white,
          builder: (context) => BookDetailsContent(book: book),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(book.image, fit: BoxFit.fill),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            book.title,
            style: AppStyles.medium16,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            "\$${book.price}",
            style: AppStyles.bold14.copyWith(color: AppColors.mainColor),
          ),
        ],
      ),
    );
  }
}
