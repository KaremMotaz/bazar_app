import 'package:bazar_app/features/home/data/models/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit() : super(const BooksState());

  void changeFilter(BookFilterType filter) {
    emit(state.copyWith(selectedFilter: filter));
  }

  List<BookModel> getFilteredBooks(List<BookModel> books) {
    switch (state.selectedFilter) {
      case BookFilterType.novels:
        return books.where((e) => e.category == 'novel').toList();

      case BookFilterType.selfLove:
        return books.where((e) => e.category == 'self_love').toList();

      case BookFilterType.science:
        return books.where((e) => e.category == 'science').toList();

      case BookFilterType.romantic:
        return books.where((e) => e.category == 'romantic').toList();

      case BookFilterType.all:
        return books;
    }
  }
}
