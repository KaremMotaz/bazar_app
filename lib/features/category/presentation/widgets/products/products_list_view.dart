import 'package:flutter/material.dart';
import '../../../data/models/product_model.dart';
import 'custom_product_card.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (_, _) => Divider(color: Colors.grey.shade300),
        itemBuilder: (context, index) {
          final product = products[index];

          return CustomProductCard(product: product);
        },
      ),
    );
  }
}
