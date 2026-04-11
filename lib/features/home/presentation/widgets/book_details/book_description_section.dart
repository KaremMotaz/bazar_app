import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class BookDescriptionSection extends StatelessWidget {
  final String description;

  const BookDescriptionSection({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: AppStyles.regular14.copyWith(color: Colors.grey.shade500),
    );
  }
}
