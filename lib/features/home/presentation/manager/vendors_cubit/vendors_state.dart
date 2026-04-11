part of 'vendors_cubit.dart';

enum VendorFilterType { all, books, poems, special, stationary }

@immutable
class VendorsState extends Equatable {
  final VendorFilterType selectedFilter;

  const VendorsState({this.selectedFilter = VendorFilterType.all});

  VendorsState copyWith({VendorFilterType? selectedFilter}) {
    return VendorsState(selectedFilter: selectedFilter ?? this.selectedFilter);
  }

  @override
  List<Object> get props => [selectedFilter];
}
