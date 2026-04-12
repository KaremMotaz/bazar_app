import '../../../data/mock/vendors_mock.dart';
import '../../../data/models/vendor_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import 'best_vendors_list_view.dart';
import '../shared/custom_section_header.dart';

class BestVendorsSection extends StatelessWidget {
  const BestVendorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    const List<VendorModel> vendors = VendorsMock.vendors;
    final List<VendorModel> limitedVendors = vendors.take(5).toList();
    return Column(
      children: [
        CustomSectionHeader(
          title: "Best Vendors",
          onTap: () {
            context.push(Routes.vendordsView);
          },
        ),
        SizedBox(height: 16),
        BestVendorsListView(limitedVendors: limitedVendors),
      ],
    );
  }
}
