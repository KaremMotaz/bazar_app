import 'package:flutter/material.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailFormWidget extends StatelessWidget {
  const EmailFormWidget({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email", style: AppStyles.medium14),
        const SizedBox(height: 6),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: "Your email",
          controller: emailController,
          maxLines: 1,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your email";
            }
            if (!AppRegex.isEmailValid(value)) {
              return "Please enter a valid email";
            }
            return null;
          },
        ),
      ],
    );
  }
}
