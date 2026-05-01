import 'package:bazar_app/features/category/presentation/manager/category_cubit/category_cubit.dart';
import 'package:bazar_app/features/category/presentation/widgets/products_category/products_category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCategoryWidget extends StatelessWidget {
  const ProductsCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is CategoryFailure) {
          return Center(child: Text(state.error));
        }

        if (state is CategorySuccess) {
          return ProductsCategoryListView(categories: state.categories);
        }

        return const SizedBox(); // fallback
      },
    );
  }
}
