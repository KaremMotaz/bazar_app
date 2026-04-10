import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordFormWidget extends StatefulWidget {
  final TextEditingController passwordController;

  const PasswordFormWidget({super.key, required this.passwordController});

  @override
  State<PasswordFormWidget> createState() => _PasswordFormWidgetState();
}

class _PasswordFormWidgetState extends State<PasswordFormWidget> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password", style: AppStyles.medium14),
        const SizedBox(height: 6),
        AppTextFormField(
          hintText: "Your password",
          isObscureText: isPasswordObscureText,
          controller: widget.passwordController,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPasswordObscureText = !isPasswordObscureText;
              });
            },
            icon: Icon(
              isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your password";
            }

            return null;
          },
        ),
      ],
    );
  }
}
