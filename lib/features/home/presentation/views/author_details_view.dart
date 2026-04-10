import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../widgets/author_rating.dart';
import '../widgets/custom_back_appbar.dart';
import '../widgets/products_grid_view.dart';
import 'package:flutter/material.dart';

class AuthorDetailsView extends StatelessWidget {
  const AuthorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppbar(title: "Author Details"),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kAppHorizontalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 51,
                        backgroundColor: AppColors.lightGray,
                        backgroundImage: AssetImage(AppAssets.author5),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Novelist",
                        style: AppStyles.regular16.copyWith(
                          color: Colors.grey.shade900,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Tess Gunty", style: AppStyles.bold20),
                    ],
                  ),
                ),
                SizedBox(height: 23),
                AuthorRating(),
                SizedBox(height: 22),
                Text("About", style: AppStyles.bold16),
                SizedBox(height: 8),
                Text(
                  "Gunty was born and raised in South Bend, Indiana.She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
                  style: AppStyles.regular16.copyWith(
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 22),
                Text("Products", style: AppStyles.bold16),
                SizedBox(height: 14),
                ProductsGridView(),
                SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
