import 'package:bazar_app/core/services/cache_helper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import '../../../../../core/services/cache_helper.dart';
// import '../../../../../core/helpers/constants.dart';
import '../../../../../core/helpers/constants.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import 'onboarding_page_view.dart';
import 'page_view_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int currentPageIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPageIndex = _pageController.page!.round();
      });
    });
  }

  void goToNextPage() {
    if (currentPageIndex < pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<PageViewItem> pages = [
    const PageViewItem(
      imageUrl: AppAssets.onboarding1,
      title: "Now reading books will be easier",
      description:
          "Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.",
      isVisible: true,
    ),
    const PageViewItem(
      imageUrl: AppAssets.onboarding2,
      title: "Your Bookish Soulmate Awaits",
      description:
          "Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.",
      isVisible: true,
    ),
    const PageViewItem(
      imageUrl: AppAssets.onboarding3,
      title: "Start Your Adventure",
      description:
          "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!",
      isVisible: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Column(
        children: [
          OnboardingPageView(pageController: _pageController, pages: pages),
          DotsIndicator(
            dotsCount: 3,
            position: currentPageIndex.toDouble(),
            decorator: const DotsDecorator(
              color: Color(0xffE8E8E8),
              activeColor: AppColors.mainColor,
              size: Size(4, 4),
              spacing: EdgeInsets.symmetric(horizontal: 4),
              activeSize: Size(8, 8),
            ),
          ),
          const SizedBox(height: 32),
          AppTextButton(
            textStyle: AppStyles.bold17.copyWith(color: AppColors.white),
            borderRadius: 12,
            onPressed: () {
              if (currentPageIndex < pages.length - 1) {
                goToNextPage();
                return;
              }
              CacheHelper.set(key: kHasSeenOnboarding, value: true);
              context.pushReplacement(Routes.signInView);
            },
            child: Text(
              currentPageIndex < pages.length - 1 ? "Continue" : "Get Started",
              style: AppStyles.medium20.copyWith(color: AppColors.white),
            ),
          ),
          const SizedBox(height: 8),
          AppTextButton(
            backgroundColor: Color(0xffFAF9FD),
            borderRadius: 12,
            onPressed: () {
              CacheHelper.set(key: kHasSeenOnboarding, value: true);
              context.pushReplacement(Routes.signInView);
            },
            child: Text(
              "Sign in",
              style: AppStyles.bold16.copyWith(color: AppColors.mainColor),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
