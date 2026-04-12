import 'package:flutter/material.dart';

import '../../../../../core/theming/app_assets.dart';

class BookVendorImage extends StatelessWidget {
  const BookVendorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.vendor3, height: 20);
  }
}
