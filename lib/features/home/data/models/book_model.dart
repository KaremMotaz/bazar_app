class BookModel {
  final String id;
  final String title;
  final String image;
  final String category;
  final List<String> vendors;
  final String price;
  final String description;
  final double rating;

  const BookModel({
    required this.id,
    required this.title,
    required this.image,
    required this.category,
    required this.price,
    required this.description,
    required this.rating,
    required this.vendors,
  });
}
