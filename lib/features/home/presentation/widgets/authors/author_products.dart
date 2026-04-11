import 'package:bazar_app/features/home/data/mock/books_mock.dart';
import 'package:bazar_app/features/home/data/models/book_model.dart';

import '../../../../../core/theming/app_styles.dart';
import '../books/products_grid_view.dart';
import 'package:flutter/material.dart';

class AuthorProducts extends StatelessWidget {
  const AuthorProducts({super.key});

  @override
  Widget build(BuildContext context) {
    const List<BookModel> books = BooksMock.books;
    final List<BookModel> limitedBooks = books.take(4).toList();

    return Column(
      spacing: 14,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Products", style: AppStyles.bold16),
        ProductsGridView(books: limitedBooks),
      ],
    );
  }
}
