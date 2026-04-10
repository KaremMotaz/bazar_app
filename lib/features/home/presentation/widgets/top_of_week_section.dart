import 'package:bazar_app/features/home/presentation/widgets/custom_section_header.dart';
import 'package:bazar_app/features/home/presentation/widgets/top_of_week_books_list_view.dart';
import 'package:flutter/material.dart';

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
