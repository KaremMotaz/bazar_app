import 'package:flutter/material.dart';
import '../../../../../core/helpers/constants.dart';
import '../../../data/models/vendor_model.dart';
import 'vendor_card.dart';

class BestVendorsListView extends StatelessWidget {
  final List<VendorModel> limitedVendors;
  const BestVendorsListView({super.key, required this.limitedVendors});

  @override
  Widget build(BuildContext context) {
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
