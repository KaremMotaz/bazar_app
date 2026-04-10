import 'package:bazar_app/features/home/data/models/vendor_model.dart';
import 'package:flutter/material.dart';

class VendorCard extends StatelessWidget {
  final VendorModel vendor;

  const VendorCard({super.key, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 26),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(vendor.image, width: 60),
    );
  }
}
