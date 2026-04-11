import 'package:bazar_app/features/home/data/mock/authors_mock.dart';
import 'package:bazar_app/features/home/data/models/authors_model.dart';
import 'package:bazar_app/features/home/presentation/manager/authors_cubit/authors_cubit.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/authors_header.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/authors_tabs.dart';
import 'package:bazar_app/features/home/presentation/widgets/authors/authors_vertical_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/shared/custom_back_appbar.dart';
import '../widgets/shared/custom_search_widget.dart';

class AuthorsView extends StatelessWidget {
  const AuthorsView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<AuthorModel> authors = AuthorsMock.authors;

    return Scaffold(
      appBar: CustomBackAppbar(
        title: "Authors",
        actionWidget: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CustomSearchWidget(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthorsHeader(),
          const SizedBox(height: 40),
          const AuthorsTabs(),
          const SizedBox(height: 28),
          BlocBuilder<AuthorsCubit, AuthorsState>(
            builder: (context, state) {
              final cubit = context.read<AuthorsCubit>();
              final filtered = cubit.getFilteredAuthors(authors);
              return AuthorsVerticalListView(authors: filtered);
            },
          ),
        ],
      ),
    );
  }
}
