part of 'authors_cubit.dart';

enum AuthorFilterType { all, poets, playwrights, novelists, journalists }

class AuthorsState extends Equatable {
  final AuthorFilterType selectedFilter;

  const AuthorsState({this.selectedFilter = AuthorFilterType.all});

  AuthorsState copyWith({AuthorFilterType? selectedFilter}) {
    return AuthorsState(selectedFilter: selectedFilter ?? this.selectedFilter);
  }

  @override
  List<Object> get props => [selectedFilter];
}
