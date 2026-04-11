import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../helpers/constants.dart';
import '../theming/app_assets.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kAppHorizontalPadding),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {
          context.pop();
        },
        child: Center(
          child: SvgPicture.asset(AppAssets.arrowLeftIcon, height: 24),
        ),
      ),
    );
  }
}
