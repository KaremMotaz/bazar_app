import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/vendor_model.dart';
import '../shared/custom_rating.dart';
import 'vendor_card.dart';
import 'package:flutter/material.dart';

class VendorGridItem extends StatelessWidget {
  final VendorModel vendor;

  const VendorGridItem({super.key, required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(aspectRatio: 1, child: VendorCard(vendor: vendor)),
        SizedBox(height: 8),
        Text(vendor.name, style: AppStyles.medium16),
        SizedBox(height: 4),
        CustomRating(rating: vendor.rating, starSize: 12, starSpacing: 4),
      ],
    );
  }
}
