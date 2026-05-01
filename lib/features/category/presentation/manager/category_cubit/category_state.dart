part of 'category_cubit.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object?> get props => [];
}

class CategoryInitial extends CategoryState {
  const CategoryInitial();
}

class CategoryLoading extends CategoryState {
  const CategoryLoading();
}

class CategorySuccess extends CategoryState {
  final List<CategoryModel> categories;

  const CategorySuccess(this.categories);

  @override
  List<Object?> get props => [categories];
}

class CategoryFailure extends CategoryState {
  final String error;

  const CategoryFailure(this.error);

  @override
  List<Object?> get props => [error];
}