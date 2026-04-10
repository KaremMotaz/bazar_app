import 'best_vendors_list_view.dart';
import 'custom_section_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';

class BestVendorsSection extends StatelessWidget {
  const BestVendorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(
          title: "Best Vendors",
          onTap: () {
            context.push(Routes.vendordsView);
          },
        ),
        SizedBox(height: 16),
        BestVendorsListView(),
      ],
    );
  }
}
