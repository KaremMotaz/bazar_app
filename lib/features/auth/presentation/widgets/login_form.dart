import 'package:bazar_app/core/services/cache_helper.dart';
import 'package:bazar_app/core/widgets/app_text_button.dart';
import 'package:bazar_app/features/auth/presentation/widgets/email_form_widget.dart';
import 'package:bazar_app/features/auth/presentation/widgets/forgot_password_widget.dart';
import 'package:bazar_app/features/auth/presentation/widgets/password_form_widget.dart';
import '../../../../core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
          EmailFormWidget(emailController: emailController),
          const SizedBox(height: 16),
          PasswordFormWidget(passwordController: passwordController),
          const SizedBox(height: 5),
          ForgotPasswordWidget(),
          const SizedBox(height: 24),
          AppTextButton(
            onPressed: () {
              validateThenLogin(context);
            },
            buttonText: "Login",
          ),
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) async {
    await CacheHelper.set(key: "email", value: emailController.text);
    await CacheHelper.set(key: "password", value: passwordController.text);
    // ignore: use_build_context_synchronously
    context.pushReplacement(Routes.homeView);

    // if (formKey.currentState!.validate()) {}
  }
}
