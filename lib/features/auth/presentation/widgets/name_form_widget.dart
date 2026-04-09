import 'package:bazar_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class NameFormWidget extends StatelessWidget {
  const NameFormWidget({super.key, required this.nameController});

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name", style: AppStyles.medium14),
        const SizedBox(height: 6),
        AppTextFormField(
          textInputType: TextInputType.text,
          hintText: "Your name",
          controller: nameController,
          maxLines: 1,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your name";
            }
            return null;
          },
        ),
      ],
    );
  }
}
