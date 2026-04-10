import '../../core/routing/app_router.dart';
import '../../core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class BazarApp extends StatelessWidget {
  const BazarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: AppStyles.bold20,          
        ),
      ),
      routerConfig: AppRouter.createRouter(),
    );
  }
}
