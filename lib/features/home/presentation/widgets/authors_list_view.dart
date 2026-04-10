import '../../../../core/helpers/constants.dart';
import '../../data/mock/authors_mock.dart';
import '../../data/models/authors_model.dart';
import 'author_card.dart';
import 'package:flutter/material.dart';

class AuthorsListView extends StatelessWidget {
  const AuthorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<AuthorModel> authors = AuthorsMock.authors;
    return SizedBox(
      height: 160,
      child: ListView.separated(
        itemCount: authors.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? kAppHorizontalPadding : 0,
              right: index == authors.length - 1 ? kAppHorizontalPadding : 0,
            ),
            child: AuthorCard(author: authors[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 30);
        },
      ),
    );
  }
}
