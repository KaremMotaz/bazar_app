import 'package:flutter/material.dart';

import 'custom_section_header.dart';
import 'top_of_week_books_list_view.dart';

class TopOfWeekSection extends StatelessWidget {
  const TopOfWeekSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(title: "Top of Week", onTap: () {}),
        SizedBox(height: 16),
        TopOfWeekBooksListView(),
      ],
    );
  }
}
