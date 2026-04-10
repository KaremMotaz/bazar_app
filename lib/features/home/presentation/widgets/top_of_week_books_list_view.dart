import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/features/home/data/mock/books_mock.dart';
import 'package:bazar_app/features/home/data/models/book_model.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

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
