import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/authors_model.dart';
part 'authors_state.dart';

class AuthorsCubit extends Cubit<AuthorsState> {
  AuthorsCubit() : super(const AuthorsState());

  void changeFilter(AuthorFilterType filter) {
    emit(state.copyWith(selectedFilter: filter));
  }

  List<AuthorModel> getFilteredAuthors(List<AuthorModel> authors) {
    switch (state.selectedFilter) {
      case AuthorFilterType.poets:
        return authors.where((e) => e.type == 'poet').toList();

      case AuthorFilterType.playwrights:
        return authors.where((e) => e.type == 'playwright').toList();

      case AuthorFilterType.novelists:
        return authors.where((e) => e.type == 'novelist').toList();

      case AuthorFilterType.journalists:
        return authors.where((e) => e.type == 'journalist').toList();

      case AuthorFilterType.all:
        return authors;
    }
  }
}
