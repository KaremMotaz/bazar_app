import 'package:bazar_app/core/services/cache_helper.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final String email = CacheHelper.getString(key: "email");
    final String password = CacheHelper.getString(key: "password");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Email: $email"), Text("Password: $password")],
        ),
      ),
    );
  }
}
