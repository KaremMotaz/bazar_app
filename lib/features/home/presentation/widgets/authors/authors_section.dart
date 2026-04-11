import 'package:bazar_app/features/home/data/mock/authors_mock.dart';
import 'package:bazar_app/features/home/data/models/authors_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import 'authors_horizontal_list_view.dart';
import '../shared/custom_section_header.dart';

class AuthorsSection extends StatelessWidget {
  const AuthorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    const List<AuthorModel> authors = AuthorsMock.authors;
    return Column(
      children: [
        CustomSectionHeader(
          title: "Authors",
          onTap: () {
            context.push(Routes.authorsView);
          },
        ),
        SizedBox(height: 30),
        AuthorsHorizontalListView(authors: authors),
      ],
    );
  }
}
