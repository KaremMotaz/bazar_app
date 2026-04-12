import '../../../../../core/helpers/constants.dart';
import '../../../data/models/vendor_model.dart';
import 'vendor_grid_item.dart';
import 'package:flutter/material.dart';

class VendordsGridView extends StatelessWidget {
  final List<VendorModel> vendors;
  const VendordsGridView({super.key, required this.vendors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 18,
          childAspectRatio: 0.66,
        ),
        itemCount: vendors.length,
        itemBuilder: (context, index) {
          return VendorGridItem(vendor: vendors[index]);
        },
      ),
    );
  }
}
