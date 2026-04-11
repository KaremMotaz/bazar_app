import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../home/presentation/widgets/custom_back_appbar.dart';
import '../widgets/add_phone_form.dart';

class AddPhoneNumberView extends StatelessWidget {
  const AddPhoneNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kAppHorizontalPadding,
            vertical: kAppVerticalPadding,
          ),
          child: Column(
            children: [
              Text("Phone Number", style: AppStyles.bold24),
              Text(
                "Please enter your phone number, so we can more easily deliver your order",
                textAlign: TextAlign.center,
                style: AppStyles.regular16.copyWith(color: AppColors.appGray),
              ),
              SizedBox(height: 24),
              AddPhoneForm(),
            ],
          ),
        ),
      ),
    );
  }
}
