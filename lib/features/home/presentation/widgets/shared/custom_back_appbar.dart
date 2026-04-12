import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_back_button.dart';

class CustomBackAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? actionWidget;
  const CustomBackAppbar({super.key, this.title, this.actionWidget});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: context.canPop() ? CustomBackButton() : null,
      leadingWidth: 50,
      title: Text(title ?? ""),
      actions: [actionWidget ?? const SizedBox.shrink()],
    );
  }
}
