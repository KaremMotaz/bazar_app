import '../widgets/custom_back_appbar.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomBackAppbar(title: "Notification"));
  }
}
