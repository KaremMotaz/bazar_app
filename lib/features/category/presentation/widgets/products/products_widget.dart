import 'package:bazar_app/features/category/presentation/manager/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'products_list_view.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is ProductFailure) {
          return Center(child: Text(state.error));
        }

        if (state is ProductSuccess) {
          final products = state.products;

          if (products.isEmpty) {
            return const Center(child: Text("No products available"));
          }

          return ProductsListView(products: products);
        }

        return const SizedBox();
      },
    );
  }
}
