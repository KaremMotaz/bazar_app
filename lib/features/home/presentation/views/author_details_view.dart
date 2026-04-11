import 'package:bazar_app/features/home/data/mock/authors_mock.dart';
import 'package:bazar_app/features/home/data/models/authors_model.dart';
import 'package:bazar_app/features/home/presentation/widgets/about_author.dart';
import 'package:bazar_app/features/home/presentation/widgets/author_info.dart';
import 'package:bazar_app/features/home/presentation/widgets/author_products.dart';
import '../../../../core/helpers/constants.dart';
import '../widgets/custom_back_appbar.dart';
import 'package:flutter/material.dart';

class AuthorDetailsView extends StatelessWidget {
  const AuthorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthorModel author = AuthorsMock.authors[1];

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
