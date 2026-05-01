import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/services/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../widgets/profile_form.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Column(
        children: [
          ProfileForm(),
          SizedBox(height: 32),
          IconButton(
            onPressed: () {
              CacheHelper.deleteSecureData(key: 'accessToken');
              context.pushReplacement(Routes.signInView);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
