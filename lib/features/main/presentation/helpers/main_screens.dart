import '../../../cart/presentation/views/cart_view.dart';
import '../../../category/presentation/views/category_view.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class MainScreens {
  static List<Widget> build() {
    return [HomeView(), CategoryView(), CartView(), ProfileView()];
  }
}
