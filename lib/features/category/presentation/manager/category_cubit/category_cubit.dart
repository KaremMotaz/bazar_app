import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/category_model.dart';
import '../../../data/repos/category_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepo repo;

  CategoryCubit(this.repo) : super(CategoryInitial());

  Future<void> getCategories() async {
    emit(CategoryLoading());

    try {
      final categories = await repo.getCategories();
      emit(CategorySuccess(categories));
    } catch (e) {
      emit(CategoryFailure(e.toString()));
    }
  }
}