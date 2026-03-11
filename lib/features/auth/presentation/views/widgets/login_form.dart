import 'package:bazar_app/core/widgets/app_text_button.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordObscureText = true;

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
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
          const SizedBox(height: 16),
          Text("Password", style: AppStyles.medium14),
          const SizedBox(height: 6),
          AppTextFormField(
            hintText: "Your password",
            isObscureText: isPasswordObscureText,
            controller: passwordController,
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
              if (!AppRegex.isPasswordValid(value)) {
                return "Please enter a valid password";
              }
              return null;
            },
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push(Routes.forgotPasswordView);
            },
            child: Text(
              "Forgot Password?",
              style: AppStyles.semiBold14.copyWith(color: AppColors.mainColor),
            ),
          ),
          const SizedBox(height: 24),
          AppTextButton(onPressed: () {}, buttonText: "Login"),
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {}
  }
}
