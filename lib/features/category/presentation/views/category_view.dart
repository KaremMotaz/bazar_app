import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/features/home/data/mock/books_mock.dart';
import 'package:bazar_app/features/home/data/models/book_model.dart';
import 'package:bazar_app/features/home/presentation/widgets/books/products_grid_view.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<BookModel> books = BooksMock.books;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Column(
        children: [
          SizedBox(height: 24),
          Expanded(child: ProductsGridView(books: books)),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
