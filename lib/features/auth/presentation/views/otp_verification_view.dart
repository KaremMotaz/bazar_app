import 'package:bazar_app/core/enums/verification_type.dart';
import 'package:bazar_app/features/auth/presentation/widgets/otp_verification_view_body.dart';
import 'package:flutter/material.dart';

class OtpVerificationView extends StatelessWidget {
  final VerificationType type;
  final String value;
  const OtpVerificationView({
    super.key,
    required this.type,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: OTPVerificationViewBody(type: type, value: value),
      ),
    );
  }
}
