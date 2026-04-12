import '../../../home/presentation/manager/books_cubit/books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cart/presentation/views/cart_view.dart';
import '../../../category/presentation/views/category_view.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../profile/presentation/views/profile_view.dart';

class MainScreens {
  static List<Widget> build({required BuildContext context}) {
    return [
      HomeView(),
      BlocProvider(create: (context) => BooksCubit(), child: CategoryView()),
      CartView(),
      ProfileView(),
    ];
  }
}
