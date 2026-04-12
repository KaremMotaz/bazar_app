import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/constants.dart';
import '../../manager/vendors_cubit/vendors_cubit.dart';
import '../shared/tap_widget.dart';

class VendorsTabs extends StatelessWidget {
  const VendorsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> tabs = [
      "All",
      "Books",
      "Poems",
      "Special for you",
      "Stationary",
    ];

    return BlocBuilder<VendorsCubit, VendorsState>(
      builder: (context, state) {
        return SizedBox(
          height: 28,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: tabs.length,
            separatorBuilder: (_, _) => const SizedBox(width: 24),
            itemBuilder: (context, index) {
              final bool isSelected = state.selectedFilter.index == index;
          
              return GestureDetector(
                onTap: () {
                  context.read<VendorsCubit>().changeFilter(
                    VendorFilterType.values[index],
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? kAppHorizontalPadding : 0,
                    right: index == tabs.length - 1 ? kAppHorizontalPadding : 0,
                  ),
                  child: TapWidget(tab: tabs[index], isSelected: isSelected),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
