import 'package:bazar_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

class BazarApp extends StatelessWidget {
  const BazarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.createRouter(),
    );
  }
}
