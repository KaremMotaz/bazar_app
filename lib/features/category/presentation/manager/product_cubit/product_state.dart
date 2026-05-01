part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {
  const ProductInitial();
}

class ProductLoading extends ProductState {
  const ProductLoading();
}

class ProductSuccess extends ProductState {
  final List<ProductModel> products;

  const ProductSuccess(this.products);

  @override
  List<Object?> get props => [products];
}

class ProductFailure extends ProductState {
  final String error;

  const ProductFailure(this.error);

  @override
  List<Object?> get props => [error];
}