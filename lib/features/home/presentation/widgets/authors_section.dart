import '../../../../core/routing/routes.dart';
import 'authors_list_view.dart';
import 'custom_section_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthorsSection extends StatelessWidget {
  const AuthorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(
          title: "Authors",
          onTap: () {
            context.push(Routes.authorsView);
          },
        ),
        SizedBox(height: 30),
        AuthorsListView(),
      ],
    );
  }
}
