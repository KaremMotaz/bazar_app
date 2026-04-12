import 'package:bazar_app/features/home/data/mock/authors_mock.dart';
import 'package:bazar_app/features/home/data/models/authors_model.dart';
import 'package:bazar_app/features/home/presentation/manager/authors_cubit/authors_cubit.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/authors_header.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/authors_tabs.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/authors_vertical_list_view.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/custom_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/shared/custom_search_widget.dart';

class AuthorsView extends StatelessWidget {
  const AuthorsView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<AuthorModel> authors = AuthorsMock.authors;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const CustomSliverAppBar(
            title: "Authors",
            actionWidget: Padding(
              padding: EdgeInsets.only(right: 16),
              child: CustomSearchWidget(),
            ),
          ),
          const SliverToBoxAdapter(child: AuthorsHeader()),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverAppBar(
            pinned: true,
            primary: false,
            toolbarHeight: 0,
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(28),
              child: AuthorsTabs(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
        ],

        body: BlocBuilder<AuthorsCubit, AuthorsState>(
          builder: (context, state) {
            final cubit = context.read<AuthorsCubit>();
            final filtered = cubit.getFilteredAuthors(authors);
            return AuthorsVerticalListView(authors: filtered);
          },
        ),
      ),
    );
  }
}
