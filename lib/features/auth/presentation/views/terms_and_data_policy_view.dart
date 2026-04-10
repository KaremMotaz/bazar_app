import '../../../home/presentation/widgets/custom_back_appbar.dart';
import 'package:flutter/material.dart';

class TermsAndDataPolicyView extends StatelessWidget {
  const TermsAndDataPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomBackAppbar(title: "Terms and Data Policy"));
  }
}
