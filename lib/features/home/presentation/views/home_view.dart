import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../widgets/authors/authors_section.dart';
import '../widgets/books/top_of_week_section.dart';
import '../widgets/special_offer/special_offers_section.dart';
import '../widgets/vendords/best_vendors_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            AuthorsSection(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
