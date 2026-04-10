import 'package:bazar_app/core/routing/routes.dart';
import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        context.push(Routes.searchView);
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Center(
          child: SvgPicture.asset(AppAssets.searchIcon, height: 24, width: 24),
        ),
      ),
    );
  }
}
