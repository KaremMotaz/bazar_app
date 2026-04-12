import 'package:bazar_app/features/home/presentation/widgets/authors/author_products_grid_sliver.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/custom_sliver_appbar.dart';
import '../../data/models/authors_model.dart';
import '../widgets/authors/about_author.dart';
import '../widgets/authors/author_info.dart';
import '../widgets/authors/author_products_sliver_header.dart';
import 'package:flutter/material.dart';

class AuthorDetailsView extends StatelessWidget {
  final AuthorModel author;
  const AuthorDetailsView({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(title: "Author Details"),
          const SliverToBoxAdapter(child: SizedBox(height: 22)),
          SliverToBoxAdapter(child: AuthorInfo(author: author)),
          const SliverToBoxAdapter(child: SizedBox(height: 22)),
          SliverToBoxAdapter(child: AboutAuthor(about: author.about)),
          const SliverToBoxAdapter(child: SizedBox(height: 22)),
          AuthorProductsSliverHeader(),
          AuthorProductsGridSliver(),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }
}
