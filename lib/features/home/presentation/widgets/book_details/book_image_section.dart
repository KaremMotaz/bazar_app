import 'package:flutter/material.dart';

class BookImageSection extends StatelessWidget {
  final String image;

  const BookImageSection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 237,
        child: AspectRatio(
          aspectRatio: 237 / 313,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}