import 'package:flutter/material.dart';
import 'package:flutter_news/models/articles.dart';
import 'package:flutter_news/pages/news_page.dart';
import 'package:flutter_news/pages/widgets/article_image_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class ArticleListWidget extends StatelessWidget {
  const ArticleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: ArticleModel.articles.length,
          itemBuilder: (context, index) {
            final article = ArticleModel.articles[index];
            return InkWell(
              child: ArticleItemWidget(articles: article),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsPage(
                              articles: article,
                            )));
              },
            );
          }),
    );
  }
}

class ArticleItemWidget extends StatelessWidget {
  final Articles articles;

  const ArticleItemWidget({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Row(
          children: [
            Hero(
                tag: Key(articles.title.toString()),
                child: ArticleImageWidget(image: articles.urlToImage)),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(articles.title, style: const TextStyle(fontWeight: FontWeight.bold), maxLines: 2,),
                10.heightBox,
              ],
            ))
          ],
        ),
      ),
    );
  }
}
