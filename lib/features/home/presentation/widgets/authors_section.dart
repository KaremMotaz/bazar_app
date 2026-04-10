import 'package:bazar_app/features/home/presentation/widgets/authors_list_view.dart';
import 'package:bazar_app/features/home/presentation/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';

class AuthorsSection extends StatelessWidget {
  const AuthorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(title: "Authors", onTap: () {}),
        SizedBox(height: 30),
        AuthorsListView(),
      ],
    );
  }
}
