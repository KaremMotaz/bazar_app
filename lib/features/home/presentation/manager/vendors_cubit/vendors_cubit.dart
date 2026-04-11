import 'package:bazar_app/features/home/data/models/vendor_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'vendors_state.dart';

class VendorsCubit extends Cubit<VendorsState> {
  VendorsCubit() : super(const VendorsState());

  void changeFilter(VendorFilterType filter) {
    emit(state.copyWith(selectedFilter: filter));
  }

  List<VendorModel> getFilteredVendors(List<VendorModel> vendors) {
    switch (state.selectedFilter) {
      case VendorFilterType.books:
        return vendors.where((e) => e.category == 'books').toList();

      case VendorFilterType.poems:
        return vendors.where((e) => e.category == 'poems').toList();

      case VendorFilterType.special:
        return vendors.where((e) => e.category == 'special').toList();

      case VendorFilterType.stationary:
        return vendors.where((e) => e.category == 'stationary').toList();

      case VendorFilterType.all:
        return vendors;
    }
  }
}
