import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_back_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String? title;
  final Widget? actionWidget;

  const CustomSliverAppBar({super.key, this.title, this.actionWidget});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,

      leading: context.canPop() ? const CustomBackButton() : null,
      leadingWidth: 50,

      title: Text(title ?? ""),

      actions: [actionWidget ?? const SizedBox.shrink()],
    );
  }
}
