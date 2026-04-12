import '../../data/mock/vendors_mock.dart';
import '../../data/models/vendor_model.dart';
import '../manager/vendors_cubit/vendors_cubit.dart';
import '../widgets/authors/custom_sliver_appbar.dart';
import '../widgets/vendords/vendords_grid_view.dart';
import '../widgets/vendords/vendords_header.dart';
import '../widgets/vendords/vendors_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/shared/custom_search_widget.dart';

class VendordsView extends StatelessWidget {
  const VendordsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<VendorModel> vendors = VendorsMock.vendors;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const CustomSliverAppBar(
            title: "Vendors",
            actionWidget: Padding(
              padding: EdgeInsets.only(right: 16),
              child: CustomSearchWidget(),
            ),
          ),
          const SliverToBoxAdapter(child: VendordsHeader()),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverAppBar(
            pinned: true,
            primary: false,
            toolbarHeight: 0,
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(28),
              child: VendorsTabs(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ],
        body: BlocBuilder<VendorsCubit, VendorsState>(
          builder: (context, state) {
            final cubit = context.read<VendorsCubit>();
            final filtered = cubit.getFilteredVendors(vendors);
            return VendordsGridView(vendors: filtered);
          },
        ),
      ),
    );
  }
}
