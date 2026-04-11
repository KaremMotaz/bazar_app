import 'package:flutter/material.dart';

import '../../../../../core/helpers/constants.dart';
import '../../../data/models/book_model.dart';
import 'book_card.dart';

class TopOfWeekBooksListView extends StatelessWidget {
  final List<BookModel> books;
  const TopOfWeekBooksListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
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
            child: AspectRatio(
              aspectRatio: 0.64,
              child: BookCard(book: books[index]),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
      ),
    );
  }
}
