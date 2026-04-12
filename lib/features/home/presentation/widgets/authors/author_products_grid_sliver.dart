import 'package:flutter/material.dart';

import '../../../../../core/helpers/constants.dart';
import '../../../data/mock/books_mock.dart';
import '../../../data/models/book_model.dart';
import '../books/product_card.dart';

class AuthorProductsGridSliver extends StatelessWidget {
  const AuthorProductsGridSliver({super.key});

  @override
  Widget build(BuildContext context) {
    const List<BookModel> books = BooksMock.books;
    final List<BookModel> limitedBooks = books.take(4).toList();

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      sliver: SliverGrid.builder(
        itemCount: limitedBooks.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.74,
        ),
        itemBuilder: (context, index) {
          return ProductCard(book: limitedBooks[index]);
        },
      ),
    );
  }
}
