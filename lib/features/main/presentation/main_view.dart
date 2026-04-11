import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'helpers/main_screens.dart';
import 'manager/main_cubit/main_cubit.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/main_bottom_navigation_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = MainScreens.build();
    return BlocBuilder<MainCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          appBar: _buildAppBar(currentIndex),
          bottomNavigationBar: MainBottomNavigationBar(),
          body: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: IndexedStack(index: currentIndex, children: screens),
          ),
        );
      },
    );
  }
}

PreferredSizeWidget? _buildAppBar(int index) {
  switch (index) {
    case 0:
      return CustomAppBar(title: "Home");
    case 1:
      return CustomAppBar(title: "Category");
    case 2:
      return CustomAppBar(title: 'Cart', withLeading: false);
    case 3:
      return CustomAppBar(
        title: "Profile",
        withActions: false,
        withLeading: false,
      );
    default:
      return null;
  }
}
