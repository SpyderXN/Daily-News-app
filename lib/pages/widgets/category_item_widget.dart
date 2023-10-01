import 'package:flutter/material.dart';
import 'package:flutter_news/models/category_json.dart';
import 'package:flutter_news/pages/widgets/category_image_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryItemWidget extends StatelessWidget {
  final Article article;
  const CategoryItemWidget({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Card(
          elevation: 4,
          child: Column(
            children: [
              Card(
                shape: const RoundedRectangleBorder(),
                child: Hero(
                  tag: Key(article.title.toString()),
                  child: CategoryImageWidget(image: article.imageUrl)),
              ),
              Text(
                article.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                maxLines: 4,
              ).p8(),
            ],
          ),
        ),
      ),
    );
  }
}
