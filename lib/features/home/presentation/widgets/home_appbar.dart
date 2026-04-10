import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:bazar_app/features/home/presentation/widgets/custom_notification_widget.dart';
import 'package:bazar_app/features/home/presentation/widgets/custom_search_widget.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CustomSearchWidget(),
      leadingWidth: 77,
      title: const Text("Home", style: AppStyles.bold20),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CustomNotificationWidget(),
        ),
      ],
    );
  }
}
