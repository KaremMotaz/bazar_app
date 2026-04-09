import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.lightGray)),
        SizedBox(width: 10),
        Text(
          "Or with",
          style: AppStyles.regular14.copyWith(color: AppColors.appGray),
        ),
        SizedBox(width: 10),
        Expanded(child: Divider(color: AppColors.lightGray)),
      ],
    );
  }
}
