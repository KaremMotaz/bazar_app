import '../../../../../core/helpers/constants.dart';
import '../../../data/models/authors_model.dart';
import 'author_card.dart';
import 'package:flutter/material.dart';

class AuthorsHorizontalListView extends StatelessWidget {
  final List<AuthorModel> limitedauthors;
  const AuthorsHorizontalListView({super.key,required this.limitedauthors });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        itemCount: limitedauthors.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? kAppHorizontalPadding : 0,
              right: index == limitedauthors.length - 1
                  ? kAppHorizontalPadding
                  : 0,
            ),
            child: AuthorCard(author: limitedauthors[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 30);
        },
      ),
    );
  }
}
