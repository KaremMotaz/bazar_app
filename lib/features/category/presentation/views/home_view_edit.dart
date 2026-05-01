import 'package:flutter/material.dart';

import '../widgets/products/products_widget.dart';
import '../widgets/products_category/products_category.dart';

class HomeViewEdit extends StatelessWidget {
  const HomeViewEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [ProductsCategoryWidget(), ProductsWidget()],
    );
  }
}
