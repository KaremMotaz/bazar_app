import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

final TextEditingController emailController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kAppHorizontalPadding,
        vertical: kAppVerticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Reset Password", style: AppStyles.regular14),
          Form(
            key: _formKey,
            child: AppTextFormField(
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
          ),
          const Spacer(),
          AppTextButton(onPressed: () {}, buttonText: "Reset Password"),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  void validateThenSendLinkToResetPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {}
  }
}
