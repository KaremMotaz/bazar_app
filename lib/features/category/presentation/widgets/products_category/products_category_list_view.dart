import 'package:bazar_app/features/category/data/models/category_model.dart';
import 'package:bazar_app/features/home/presentation/widgets/shared/tap_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/constants.dart';

class ProductsCategoryListView extends StatelessWidget {
  final List<CategoryModel> categories;
  const ProductsCategoryListView({
    super.key,
    required,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? kAppHorizontalPadding : 0,
              right: index == categories.length - 1 ? kAppHorizontalPadding : 0,
            ),
            child: TapWidget(tab: categories[index].name, isSelected: index == 0),
          );
        },
      ),
    );
  }
}
