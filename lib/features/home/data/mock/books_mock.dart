import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:bazar_app/features/home/data/models/book_model.dart';

class BooksMock {
  static const List<BookModel> books = [
    BookModel(
      id: "1",
      title: "The Kite Runner",
      image: AppAssets.book1,
      vendors: ["GooDay"],
      price: "14.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rate: 4,
    ),
    BookModel(
      id: "2",
      title: "The Kite Runner",
      image: AppAssets.book2,
      vendors: ["GooDay"],
      price: "57.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rate: 4,
    ),
    BookModel(
      id: "3",
      title: "The Kite Runner",
      image: AppAssets.book3,
      vendors: ["GooDay"],
      price: "25.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rate: 4,
    ),
    BookModel(
      id: "4",
      title: "The Kite Runner",
      image: AppAssets.book4,
      vendors: ["GooDay"],
      price: "30.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rate: 4,
    ),
  ];
}
