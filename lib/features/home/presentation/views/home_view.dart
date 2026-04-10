import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/features/home/presentation/widgets/best_vendors_section.dart';
import 'package:bazar_app/features/home/presentation/widgets/home_appbar.dart';
import 'package:bazar_app/features/home/presentation/widgets/special_offers_section.dart';
import 'package:bazar_app/features/home/presentation/widgets/top_of_week_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kAppVerticalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SpecialOffersSection(),
                SizedBox(height: 27),
                TopOfWeekSection(),
                SizedBox(height: 32),
                BestVendorsSection(),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
