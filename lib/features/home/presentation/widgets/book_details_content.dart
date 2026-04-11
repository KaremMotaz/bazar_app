import 'package:bazar_app/core/helpers/constants.dart';
import 'package:bazar_app/core/theming/app_styles.dart';
import 'package:bazar_app/features/home/data/models/book_model.dart';
import 'package:bazar_app/features/home/presentation/widgets/author_rating.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_details/book_actions_section.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_details/book_description_section.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_details/book_header_section.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_details/book_image_section.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_details/book_quantity_and_price.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_details/book_drag_handle.dart';
import 'package:bazar_app/features/home/presentation/widgets/book_details/book_vendor_image.dart';
import 'package:flutter/material.dart';

class BookDetailsContent extends StatelessWidget {
  final BookModel book;

  const BookDetailsContent({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kAppHorizontalPadding,
        vertical: kAppVerticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const BookDetailsDragHandle(),
          const SizedBox(height: 19),
          BookImageSection(image: book.image),
          const SizedBox(height: 16),
          BookHeaderSection(title: book.title),
          const SizedBox(height: 12),
          const BookVendorImage(),
          const SizedBox(height: 12),
          BookDescriptionSection(description: book.description),
          const SizedBox(height: 24),
          const Text("Review", style: AppStyles.bold18),
          const SizedBox(height: 8),
          AuthorRating(rating: book.rating, isCentered: false),
          const SizedBox(height: 24),
          BookQuantityAndPrice(price: double.parse(book.price)),
          const SizedBox(height: 10),
          const BookActionsSection(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
