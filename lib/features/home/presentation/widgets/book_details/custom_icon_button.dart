import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;
  final Color backgroundColor;
  final Color iconColor;

  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      constraints: const BoxConstraints(),
      padding: const EdgeInsets.all(8),
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        iconSize: 16,
      ),
      icon: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          iconColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}