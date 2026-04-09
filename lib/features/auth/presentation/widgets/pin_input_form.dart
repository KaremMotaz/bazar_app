import 'package:bazar_app/core/routing/routes.dart';
import 'package:bazar_app/core/theming/app_colors.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:bazar_app/core/widgets/app_text_button.dart';
import 'package:bazar_app/features/auth/presentation/widgets/custom_pinput.dart';
import 'package:bazar_app/features/auth/presentation/widgets/resend_otp_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PinInputForm extends StatefulWidget {
  const PinInputForm({super.key});

  @override
  State<PinInputForm> createState() => _PinInputFormState();
}

class _PinInputFormState extends State<PinInputForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomPinput(otpController: otpController),
          const SizedBox(height: 24),
          ResendOtpWidget(),
          const SizedBox(height: 43),
          AppTextButton(
            buttonText: "Continue",
            textStyle: AppStyles.semiBold16.copyWith(color: AppColors.white),
            onPressed: () {
              context.push(Routes.signInView);
            },
          ),
        ],
      ),
    );
  }
}
