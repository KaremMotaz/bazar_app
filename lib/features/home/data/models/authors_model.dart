class AuthorModel {
  final String id;
  final String type;
  final String name;
  final String image;
  final String spesiality;
  final String about;
  final double rating;

  const AuthorModel({
    required this.name,
    required this.type,
    required this.image,
    required this.id,
    required this.spesiality,
    required this.about,
    required this.rating,
  });
}
