import '../../../../core/helpers/constants.dart';
import '../../../home/presentation/manager/books_cubit/books_cubit.dart';
import '../../../home/presentation/widgets/shared/tap_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksTabs extends StatelessWidget {
  const BooksTabs({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> tabs = [
      "All",
      "Novels",
      "Self Love",
      "Science",
      "Romantic",
    ];

    return BlocBuilder<BooksCubit, BooksState>(
      builder: (context, state) {
        return SizedBox(
          height: 28,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: tabs.length,
            separatorBuilder: (_, _) => const SizedBox(width: 24),
            itemBuilder: (context, index) {
              final bool isSelected = state.selectedFilter.index == index;

              return GestureDetector(
                onTap: () {
                  context.read<BooksCubit>().changeFilter(
                    BookFilterType.values[index],
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? kAppHorizontalPadding : 0,
                    right: index == tabs.length - 1 ? kAppHorizontalPadding : 0,
                  ),
                  child: TapWidget(tab: tabs[index], isSelected: isSelected),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
