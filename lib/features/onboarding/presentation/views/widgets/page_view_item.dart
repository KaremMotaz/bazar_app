import '../../../../../core/helpers/constants.dart';
import '../../../../../core/services/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import '../../../../../core/services/cache_helper.dart';
// import '../../../../../core/helpers/constants.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.isVisible,
    required this.title,
    required this.imageUrl,
    required this.description,
  });
  final bool isVisible;
  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Visibility(
              visible: isVisible,
              maintainState: true,
              maintainAnimation: true,
              maintainSize: true,
              child: TextButton(
                onPressed: () {
                  CacheHelper.set(key: kHasSeenOnboarding, value: true);
                  context.pushReplacement(Routes.signInView);
                },
                child: Text(
                  "Skip",
                  style: AppStyles.medium14.copyWith(
                    color: AppColors.mainColor,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 13),
          Image.asset(imageUrl, height: 320),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyles.bold24,
            ),
          ),
          SizedBox(height: isVisible ? 13 : 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: AppStyles.regular16.copyWith(color: Color(0xffA6A6A6)),
            ),
          ),
        ],
      ),
    );
  }
}
