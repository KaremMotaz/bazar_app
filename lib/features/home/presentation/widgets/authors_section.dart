import 'package:bazar_app/core/routing/routes.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors_list_view.dart';
import 'package:bazar_app/features/home/presentation/widgets/custom_section_header.dart';
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
