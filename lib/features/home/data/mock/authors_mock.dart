import '../../../../core/theming/app_assets.dart';
import '../models/authors_model.dart';

class AuthorsMock {
  static const List<AuthorModel> authors = [
    AuthorModel(
      name: "John Freeman",
      type: "poet",
      image: AppAssets.author1,
      id: "1",
      spesiality: "Writer",
      about:
          "American writer he  was the editor of the New York Times magazine from 1971 to 1973.",
      rating: 3,
    ),
    AuthorModel(
      name: "Tess Gunty",
      type: "playwright",
      image: AppAssets.author2,
      id: "2",
      spesiality: "Novelist",
      about:
          "Gunty was born and raised in South Bend, Indiana.She graduated from the University of Notre Dame with a Bachelor of Arts in English and from New York University.",
      rating: 4,
    ),
    AuthorModel(
      name: "Richard Perston",
      type: "novelist",
      image: AppAssets.author3,
      id: "3",
      spesiality: "Writer",
      about:
          "Perston was born and raised in south bend,indiana she went to college at the university of michigan.",
      rating: 4,
    ),
    AuthorModel(
      name: "Hernan Diaz",
      type: "journalist",
      image: AppAssets.author4,
      id: "4",
      spesiality: "Novelist",
      about: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      rating: 4,
    ),
    AuthorModel(
      name: "Ann Napolitano",
      type: "poet",
      image: AppAssets.author5,
      id: "5",
      spesiality: "Writer",
      about: "She is the author of the novels A Good Hard",
      rating: 5,
    ),
    AuthorModel(
      name: "Abraham verghese",
      type: "playwright",
      image: AppAssets.author6,
      id: "6",
      spesiality: "Novelist",
      about: "He is the professor and Linda R . Meier and her husband",
      rating: 3,
    ),
    AuthorModel(
      name: "Adam Dalva",
      type: "novelist",
      image: AppAssets.author7,
      id: "7",
      spesiality: "Writer",
      about: "He is the senior fiction editor of guernica magazine",
      rating: 4,
    ),
  ];
}
