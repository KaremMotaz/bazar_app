import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../data/mock/books_mock.dart';
import '../../data/models/book_model.dart';
import 'book_card.dart';

class TopOfWeekBooksListView extends StatelessWidget {
  const TopOfWeekBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<BookModel> books = BooksMock.books;
    return SizedBox(
      height: 198,
      child: ListView.separated(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? kAppHorizontalPadding : 0,
              right: index == books.length - 1 ? kAppHorizontalPadding : 0,
            ),
            child: BookCard(book: books[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
      ),
    );
  }
}
