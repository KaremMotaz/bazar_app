import 'package:flutter/material.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/product_model.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(product.images[0]),
      ),
      title: Text(product.title, style: AppStyles.bold16),
      subtitle: Text("\$ ${product.price.toString()}", style: AppStyles.bold12),
    );
  }
}
