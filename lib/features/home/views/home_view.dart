import 'package:bazar_app/core/helpers/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kAppHorizontalPadding,
            vertical: kAppVerticalPadding,
          ),
          child: Column(children: [Text("Home")]),
        ),
      ),
    );
  }
}
