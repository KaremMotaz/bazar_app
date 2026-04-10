import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kAppHorizontalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Special Offer", style: AppStyles.bold20),
              Text(
                "Discount 25%",
                style: AppStyles.regular14.copyWith(
                  color: AppColors.lightBlack,
                ),
              ),
              SizedBox(height: 14),
              AppTextButton(
                onPressed: () {},
                buttonText: "Order Now",
                withSize: false,
                horizontalPadding: 24,
                verticalPadding: 8,
                borderRadius: 40,
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(3.5),
            child: Image.asset(
              AppAssets.specialOffer1,
              fit: BoxFit.fitHeight,
              width: 99,
            ),
          ),
        ],
      ),
    );
  }
}
