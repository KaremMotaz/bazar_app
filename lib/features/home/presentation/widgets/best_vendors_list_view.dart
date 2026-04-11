import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../data/mock/vendors_mock.dart';
import '../../data/models/vendor_model.dart';
import 'vendor_card.dart';

class BestVendorsListView extends StatelessWidget {
  const BestVendorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<VendorModel> vendors = VendorsMock.vendors;
    return SizedBox(
      height: 80,
      child: ListView.separated(
        itemCount: vendors.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? kAppHorizontalPadding : 0,
              right: index == vendors.length - 1 ? kAppHorizontalPadding : 0,
            ),
            child: VendorCard(vendor: vendors[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
