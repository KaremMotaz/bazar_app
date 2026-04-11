import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_assets.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        context.push(Routes.notificationView);
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            SvgPicture.asset(AppAssets.notificationIcon, height: 24),
            SvgPicture.asset(AppAssets.dotIcon, height: 8),
          ],
        ),
      ),
    );
  }
}
