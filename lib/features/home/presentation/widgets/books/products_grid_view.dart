import '../../../data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductsGridView extends StatelessWidget {
  final List<BookModel> books;
  const ProductsGridView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.74,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return ProductCard(book: books[index]);
      },
    );
  }
}
