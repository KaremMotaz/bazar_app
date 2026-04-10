import '../../../../core/helpers/constants.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/app_assets.dart';

class CongratulationView extends StatelessWidget {
  const CongratulationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kAppHorizontalPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.congratulationIcon, height: 91),
              const SizedBox(height: 40),
              Text("Congratulation!", style: AppStyles.bold24),
              Text(
                "your account is complete, please enjoy the best menu from us.",
                textAlign: TextAlign.center,
                style: AppStyles.regular16.copyWith(color: AppColors.appGray),
              ),
              const SizedBox(height: 40),
              AppTextButton(
                buttonText: "Get Started",
                onPressed: () {
                  context.go(Routes.mainView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
