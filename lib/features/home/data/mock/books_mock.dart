import '../../../../core/theming/app_assets.dart';
import '../models/book_model.dart';

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
      rating: 4,
    ),
    BookModel(
      id: "2",
      title: "The Subtile of not giving a fuck",
      image: AppAssets.book2,
      vendors: ["GooDay"],
      price: "57.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 4,
    ),
    BookModel(
      id: "3",
      title: "The art of war",
      image: AppAssets.book3,
      vendors: ["GooDay"],
      price: "25.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 4,
    ),
    BookModel(
      id: "4",
      title: "KUBO",
      image: AppAssets.book4,
      vendors: ["GooDay"],
      price: "30.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 4,
    ),
    BookModel(
      id: "5",
      title: "Carrie Fisher",
      image: AppAssets.book5,
      price: "75.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 4,
      vendors: ["GooDay"],
    ),
    BookModel(
      id: "6",
      title: "The Da vinci Code",
      image: AppAssets.book6,
      price: "37.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 3,
      vendors: ["GooDay"],
    ),
    BookModel(
      id: "7",
      title: "The Waiting",
      image: AppAssets.book7,
      price: "28.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 4,
      vendors: ["GooDay"],
    ),
    BookModel(
      id: "8",
      title: "The Good Sister",
      image: AppAssets.book8,
      price: "83.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 5,
      vendors: ["GooDay"],
    ),
    BookModel(
      id: "9",
      title: "Bright Young Women",
      image: AppAssets.book9,
      price: "68.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 4,
      vendors: ["GooDay"],
    ),
    BookModel(
      id: "10",
      title: "Where Are You",
      image: AppAssets.book10,
      price: "48.99",
      description:
          "This book is about a boy named Kite Runner and his life as a boy in the desert.",
      rating: 3,
      vendors: ["GooDay"],
    ),
  ];
}
