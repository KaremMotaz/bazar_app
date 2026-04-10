import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:bazar_app/features/home/data/models/authors_model.dart';

class AuthorsMock {
  static const List<AuthorModel> authors = [
    AuthorModel(
      name: "John Freeman",
      image: AppAssets.author1,
      id: "1",
      spesiality: "Writer",
      about:
          "American writer he  was the editor of the New York Times magazine from 1971 to 1973.",
    ),
    AuthorModel(
      name: "Tess Gunty",
      image: AppAssets.author2,
      id: "2",
      spesiality: "Novelist",
      about:
          "Gunty was born and raised in south bend,indiana she went to college at the university of michigan.",
    ),
    AuthorModel(
      name: "Richard Perston",
      image: AppAssets.author3,
      id: "3",
      spesiality: "Writer",
      about:
          "Perston was born and raised in south bend,indiana she went to college at the university of michigan.",
    ),
  ];
}
