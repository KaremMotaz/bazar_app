import 'package:bazar_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'email_form_widget.dart';
import 'forgot_password_widget.dart';
import 'password_form_widget.dart';

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
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.pushReplacement(Routes.mainView);
        }
      },
      child: Form(
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
      ),
    );
  }

  void validateThenLogin(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }
}
