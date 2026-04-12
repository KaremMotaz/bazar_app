import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/features/category/presentation/widgets/books_tabs.dart';
import 'package:bazar_app/features/home/data/mock/books_mock.dart';
import 'package:bazar_app/features/home/data/models/book_model.dart';
import 'package:bazar_app/features/home/presentation/manager/books_cubit/books_cubit.dart';
import 'package:bazar_app/features/home/presentation/widgets/books/products_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<BookModel> books = BooksMock.books;

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverAppBar(
          pinned: true,
          primary: false,
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(28),
            child: BooksTabs(),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),
      ],
      body: Padding(
        padding: const EdgeInsets.only(
          left: kAppHorizontalPadding,
          right: kAppHorizontalPadding,
          bottom: kAppHorizontalPadding,
        ),
        child: BlocBuilder<BooksCubit, BooksState>(
          builder: (context, state) {
            final cubit = context.read<BooksCubit>();
            final filtered = cubit.getFilteredBooks(books);
            return ProductsGridView(books: filtered);
          },
        ),
      ),
    );
  }
}
