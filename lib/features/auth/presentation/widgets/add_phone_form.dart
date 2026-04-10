import '../../../../core/enums/verification_type.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'add_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddPhoneForm extends StatefulWidget {
  const AddPhoneForm({super.key});

  @override
  State<AddPhoneForm> createState() => _AddPhoneFormState();
}

class _AddPhoneFormState extends State<AddPhoneForm> {
  String phoneNumber = "";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AddPhoneField(
            onChanged: (value) {
              setState(() {
                phoneNumber = value;
              });
            },
          ),
          const Spacer(),
          AppTextButton(
            onPressed: () {
              context.pushReplacement(
                Routes.otpVerificationView,
                extra: {"type": VerificationType.phone, "value": phoneNumber},
              );
            },
          ),
        ],
      ),
    );
  }
}
