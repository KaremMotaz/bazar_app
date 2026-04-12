import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/author_list_card.dart';

import '../../../data/models/authors_model.dart';
import 'package:flutter/material.dart';

class AuthorsVerticalListView extends StatelessWidget {
  final List<AuthorModel> authors;

  const AuthorsVerticalListView({super.key, required this.authors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: ListView.separated(
        itemCount: authors.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return AuthorListCard(author: authors[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 32);
        },
      ),
    );
  }
}
