import 'package:flutter/material.dart';

import '../../../../../core/helpers/constants.dart';
import '../../../data/mock/vendors_mock.dart';
import '../../../data/models/vendor_model.dart';
import 'vendor_card.dart';

class BestVendorsListView extends StatelessWidget {
  const BestVendorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<VendorModel> vendors = VendorsMock.vendors;
    final List<VendorModel> limitedVendors = vendors.take(5).toList();
    return SizedBox(
      height: 80,
      child: ListView.separated(
        itemCount: limitedVendors.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? kAppHorizontalPadding : 0,
              right: index == limitedVendors.length - 1
                  ? kAppHorizontalPadding
                  : 0,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: VendorCard(vendor: limitedVendors[index]),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
