import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../manager/main_cubit/main_cubit.dart';
import 'nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, int>(
      builder: (context, currentIndex) {
        return Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            onTap: (index) {
              context.read<MainCubit>().changeTab(index);
            },

            currentIndex: currentIndex,
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: AppColors.gray,
            selectedLabelStyle: AppStyles.medium12.copyWith(
              color: AppColors.mainColor,
            ),
            unselectedLabelStyle: AppStyles.medium12.copyWith(
              color: AppColors.gray,
            ),
            backgroundColor: Color(0xffFAFAFA),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: NavItem(
                  icon: AppAssets.homeIcon,
                  isSelected: currentIndex == 0,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: NavItem(
                  icon: AppAssets.categoryIcon,
                  isSelected: currentIndex == 1,
                ),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: NavItem(
                  icon: AppAssets.cartIcon,
                  isSelected: currentIndex == 2,
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: NavItem(
                  icon: AppAssets.profileIcon,
                  isSelected: currentIndex == 3,
                ),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
