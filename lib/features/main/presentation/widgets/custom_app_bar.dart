import '../../../home/presentation/widgets/custom_notification_widget.dart';
import '../../../home/presentation/widgets/custom_search_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool withLeading;
  final bool withActions;
  const CustomAppBar({
    super.key,
    required this.title,
    this.withLeading = true,
    this.withActions = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: withLeading ? CustomSearchWidget() : null,
      leadingWidth: 77,
      title: Text(title),
      actions: withActions
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CustomNotificationWidget(),
              ),
            ]
          : null,
    );
  }
}
