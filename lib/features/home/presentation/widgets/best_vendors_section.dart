import 'package:bazar_app/features/home/presentation/widgets/best_vendors_list_view.dart';
import 'package:bazar_app/features/home/presentation/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';

class BestVendorsSection extends StatelessWidget {
  const BestVendorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(title: "Best Vendors", onTap: () {}),
        SizedBox(height: 16),
        BestVendorsListView(),
      ],
    );
  }
}
