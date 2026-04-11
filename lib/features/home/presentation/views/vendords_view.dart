import 'package:bazar_app/features/home/data/mock/vendors_mock.dart';
import 'package:bazar_app/features/home/data/models/vendor_model.dart';
import 'package:bazar_app/features/home/presentation/manager/vendors_cubit/vendors_cubit.dart';
import 'package:bazar_app/features/home/presentation/widgets/vendords/vendords_grid_view.dart';
import 'package:bazar_app/features/home/presentation/widgets/vendords/vendords_header.dart';
import 'package:bazar_app/features/home/presentation/widgets/vendords/vendors_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/shared/custom_back_appbar.dart';
import '../widgets/shared/custom_search_widget.dart';

class VendordsView extends StatelessWidget {
  const VendordsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<VendorModel> vendors = VendorsMock.vendors;
    return Scaffold(
      appBar: CustomBackAppbar(
        title: "Vendors",
        actionWidget: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CustomSearchWidget(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VendordsHeader(),
          const SizedBox(height: 40),
          const VendorsTabs(),
          const SizedBox(height: 28),
          BlocBuilder<VendorsCubit, VendorsState>(
            builder: (context, state) {
              final cubit = context.read<VendorsCubit>();
              final filtered = cubit.getFilteredVendors(vendors);
              return VendordsGridView(vendors: filtered);
            },
          ),
        ],
      ),
    );
  }
}
