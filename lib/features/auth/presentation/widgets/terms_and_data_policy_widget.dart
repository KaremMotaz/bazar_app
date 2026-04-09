import 'package:bazar_app/core/routing/routes.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermsAndDataPolicyWidget extends StatelessWidget {
  const TermsAndDataPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "By clicking Register, you agree to our",
            style: AppStyles.medium14.copyWith(color: AppColors.appGray),
          ),
          GestureDetector(
            onTap: () {
              context.push(Routes.termsAndDataPolicyView);
            },
            child: Text(
              "Terms, Data Policy.",
              style: AppStyles.medium14.copyWith(color: AppColors.mainColor),
            ),
          ),
        ],
      ),
    );
  }
}
