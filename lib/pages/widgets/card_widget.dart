import 'package:flutter/material.dart';

import 'package:flutter_news/models/articles.dart';

class CardWidget extends StatelessWidget {
  final Articles articles;

  const CardWidget({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Image.network(
          articles.urlToImage,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset("login_image.png");
          },
        ),
        title: Text(articles.title),
      ),
    );
  }
}
