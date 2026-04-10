import 'package:bazar_app/features/home/presentation/widgets/custom_back_appbar.dart';
import 'package:flutter/material.dart';

class AuthorDetailsView extends StatelessWidget {
  const AuthorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomBackAppbar(title: "Author Details"));
  }
}
