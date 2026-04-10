import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../widgets/custom_back_appbar.dart';
import '../widgets/custom_search_widget.dart';

class AuthorsView extends StatelessWidget {
  const AuthorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppbar(
        title: "Authors",
        actionWidget: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CustomSearchWidget(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Check the authors",
              style: AppStyles.regular16.copyWith(color: Colors.grey.shade500),
            ),
            const SizedBox(height: 10),
            Text(
              "Authors",
              style: AppStyles.bold20.copyWith(color: AppColors.mainColor),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
