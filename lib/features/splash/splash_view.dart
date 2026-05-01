// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/helpers/constants.dart';
import '../../core/routing/routes.dart';
import '../../core/services/cache_helper.dart';
import '../../core/theming/app_assets.dart';
import '../../core/theming/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () async {
      if (!mounted) return;
      final bool hasSeenOnboarding = CacheHelper.getBool(
        key: kHasSeenOnboarding,
      );
      final String? getToken = await CacheHelper.getSecureData(
        key: 'accessToken',
      );
      hasSeenOnboarding
          ? getToken != null
                ? context.pushReplacement(Routes.mainView)
                : context.pushReplacement(Routes.signInView)
          : context.pushReplacement(Routes.onboardingView);
    });
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
