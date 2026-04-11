import '../../data/models/authors_model.dart';
import '../widgets/authors/about_author.dart';
import '../widgets/authors/author_info.dart';
import '../widgets/authors/author_products.dart';
import '../../../../core/helpers/constants.dart';
import '../widgets/shared/custom_back_appbar.dart';
import 'package:flutter/material.dart';

class AuthorDetailsView extends StatelessWidget {
  final AuthorModel author;
  const AuthorDetailsView({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppbar(title: "Author Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kAppHorizontalPadding,
            vertical: kAppVerticalPadding,
          ),
          child: Column(
            spacing: 22,
            children: [
              AuthorInfo(author: author),
              AboutAuthor(about: author.about),
              AuthorProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
