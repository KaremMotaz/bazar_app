import '../../../../core/enums/verification_type.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'email_form_widget.dart';
import 'name_form_widget.dart';
import 'password_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/helpers/app_regex.dart';
import 'password_validations.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordObscureText = true;
  bool showPasswordValidation = false;

  // validation booleans
  bool hasLetter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    setupPasswordControllerListener();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          NameFormWidget(nameController: nameController),
          const SizedBox(height: 16),
          EmailFormWidget(emailController: emailController),
          const SizedBox(height: 16),
          PasswordFormWidget(passwordController: passwordController),
          const SizedBox(height: 24),
          if (showPasswordValidation) ...[
            PasswordValidations(
              hasLetter: hasLetter,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
            const SizedBox(height: 24),
          ],
          AppTextButton(
            onPressed: () {
              setState(() {
                showPasswordValidation = true;
              });
              validateThenSignup(context);
            },
            buttonText: "Register",
          ),
        ],
      ),
    );
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLetter =
            AppRegex.hasLowerCase(passwordController.text) ||
            AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  void validateThenSignup(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.pushReplacement(
        Routes.otpVerificationView,
        extra: {"type": VerificationType.email, "value": emailController.text},
      );
    }
  }
}
