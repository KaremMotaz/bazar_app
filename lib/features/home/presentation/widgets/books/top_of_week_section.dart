import 'package:bazar_app/features/home/data/mock/books_mock.dart';
import 'package:bazar_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../shared/custom_section_header.dart';
import 'top_of_week_books_list_view.dart';

class TopOfWeekSection extends StatelessWidget {
  const TopOfWeekSection({super.key});

  @override
  Widget build(BuildContext context) {
    const List<BookModel> books = BooksMock.books;
    final List<BookModel> limitedBooks = books.take(4).toList();

    return Column(
      children: [
        CustomSectionHeader(title: "Top of Week", onTap: () {}),
        SizedBox(height: 16),
        TopOfWeekBooksListView(books: limitedBooks),
      ],
    );
  }
}
