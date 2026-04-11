import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:flutter/material.dart';

class BookVendorImage extends StatelessWidget {
  const BookVendorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.vendor3, height: 20);
  }
}
