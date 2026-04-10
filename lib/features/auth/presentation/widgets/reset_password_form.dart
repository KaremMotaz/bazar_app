import '../../../../core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

final TextEditingController emailController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Expanded(
        child: Column(
          children: [
            AppTextFormField(
              hintText: "Your email",
              controller: emailController,
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
            const Spacer(),
            AppTextButton(onPressed: () {}, buttonText: "Reset Password"),
          ],
        ),
      ),
    );
  }

  void validateThenSendLinkToResetPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {}
  }
}
