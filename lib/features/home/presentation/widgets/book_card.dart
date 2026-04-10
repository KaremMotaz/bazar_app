import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import '../../data/models/book_model.dart';

class BookCard extends StatelessWidget {
  final BookModel book;
  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(book.image, height: 150, width: 127),
        ),
        const SizedBox(height: 10),
        Text(book.title, style: AppStyles.medium14),
        Text("\$${book.price}", style: AppStyles.bold12),
      ],
    );
  }
}
