import 'package:bazar_app/features/category/presentation/manager/category_cubit/category_cubit.dart';
import 'package:bazar_app/features/category/presentation/manager/product_cubit/product_cubit.dart';
import 'package:bazar_app/features/category/presentation/views/home_view_edit.dart';
import 'package:bazar_app/features/profile/data/repos/profile_repo.dart';
import 'package:bazar_app/features/profile/presentation/manager/profile_cubit/profile_cubit.dart';

import '../../../../core/services/api_service.dart';
import '../../../../core/services/dio_client.dart';
import '../../../category/data/repos/category_repo.dart';
import '../../../category/data/repos/product_repo.dart';
import '../../../home/presentation/manager/books_cubit/books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cart/presentation/views/cart_view.dart';
import '../../../category/presentation/views/category_view.dart';
import '../../../profile/presentation/views/profile_view.dart';

class MainScreens {
  static List<Widget> build({required BuildContext context}) {
    return [
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                CategoryCubit(CategoryRepo(ApiService(DioClient.createDio())))
                  ..getCategories(),
          ),
          BlocProvider(
            create: (context) =>
                ProductCubit((ProductRepo(ApiService(DioClient.createDio()))))
                  ..getProducts(),
          ),
        ],
        child: HomeViewEdit(),
      ),
      BlocProvider(create: (context) => BooksCubit(), child: CategoryView()),
      CartView(),
      BlocProvider(
        create: (context) =>
            ProfileCubit(ProfileRepo(ApiService(DioClient.createDio())))
              ..getProfile(),
        child: ProfileView(),
      ),
    ];
  }
}
