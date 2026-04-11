part of 'books_cubit.dart';

enum BookFilterType { all, novels, selfLove, science, romantic }

class BooksState extends Equatable {
  final BookFilterType selectedFilter;

  const BooksState({this.selectedFilter = BookFilterType.all});

  BooksState copyWith({BookFilterType? selectedFilter}) {
    return BooksState(selectedFilter: selectedFilter ?? this.selectedFilter);
  }

  @override
  List<Object> get props => [selectedFilter];
}
