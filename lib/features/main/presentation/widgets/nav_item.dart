import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';

class NavItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  const NavItem({super.key, required this.icon, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: 21.25,
      colorFilter: ColorFilter.mode(
        isSelected ? AppColors.mainColor : AppColors.gray,
        BlendMode.srcIn,
      ),
    );
  }
}
