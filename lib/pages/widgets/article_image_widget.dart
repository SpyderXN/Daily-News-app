import 'package:flutter/material.dart';

class ArticleImageWidget extends StatelessWidget {
  final String image;

  const ArticleImageWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        height: 80,
        child: Image.network(
          image,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.image_not_supported);
          },
          fit: BoxFit.fitHeight,
        ));
  }
}
