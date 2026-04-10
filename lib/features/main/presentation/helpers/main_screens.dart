import 'package:bazar_app/features/cart/presentation/views/cart_view.dart';
import 'package:bazar_app/features/category/presentation/views/category_view.dart';
import 'package:bazar_app/features/home/presentation/views/home_view.dart';
import 'package:bazar_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class MainScreens {
  static List<Widget> build() {
    return [HomeView(), CategoryView(), CartView(), ProfileView()];
  }
}
