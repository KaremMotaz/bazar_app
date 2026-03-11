import 'package:bazar_app/core/routing/routes.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      context.pushReplacement(Routes.onboardingView);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: AppColors.mainColor),
          child: Center(
            child: SvgPicture.asset(AppAssets.splashLogo, height: 44),
          ),
        ),
      ),
    );
  }
}
