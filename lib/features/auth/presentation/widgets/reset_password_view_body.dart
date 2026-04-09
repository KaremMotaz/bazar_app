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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "يرجى إدخال بريدك الإلكتروني لتلقي رابط إعادة تعيين كلمة السر",
            style: AppStyles.regular14,
          ),
          // Image.asset(AssetsData.forgotPassword),
          Form(
            key: _formKey,
            child: AppTextFormField(
              hintText: "البريد الإلكتروني",
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "يرجى إدخال بريدك الإلكتروني";
                }
                if (!AppRegex.isEmailValid(value)) {
                  return "يرجى إدخال بريد إلكتروني صالح";
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
