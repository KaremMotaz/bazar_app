import 'package:bazar_app/features/auth/presentation/widgets/reset_password_view_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(child: ResetPasswordViewBody()),
    );
  }
}
