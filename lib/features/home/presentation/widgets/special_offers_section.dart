import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/app_colors.dart';
import 'special_offer_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SpecialOffersSection extends StatefulWidget {
  const SpecialOffersSection({super.key});

  @override
  State<SpecialOffersSection> createState() => _SpecialOffersSectionState();
}

class _SpecialOffersSectionState extends State<SpecialOffersSection> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Column(
        children: [
          CarouselSlider(
            items: List.generate(3, (index) => SpecialOfferCard()),
            options: CarouselOptions(
              height: 145,
              // autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 10),
          DotsIndicator(
            dotsCount: 3,
            position: currentIndex.toDouble(),
            decorator: const DotsDecorator(
              color: Color(0xffE8E8E8),
              activeColor: AppColors.mainColor,
              size: Size(4, 4),
              spacing: EdgeInsets.symmetric(horizontal: 4),
              activeSize: Size(8, 8),
            ),
          ),
        ],
      ),
    );
  }
}
