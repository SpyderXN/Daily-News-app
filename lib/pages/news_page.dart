import 'package:url_launcher/link.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/models/articles.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsPage extends StatelessWidget {
  final Articles articles;
  const NewsPage({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
                tag: Key(articles.title.toString()),
                child: Image.network(articles.urlToImage)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    articles.title,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ).p16(),
                  Row(
                    children: [
                      const Text(
                        "By",
                        textScaleFactor: 0.9,
                      ),
                      const SizedBox(
                        width: 3.5,
                      ),
                      Text(
                        articles.author,
                        textScaleFactor: 0.9,
                      )
                    ],
                  ).p16(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.comment_outlined),
                          SizedBox(
                            width: 4,
                          ),
                          Text("comments")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.hand_thumbsup),
                          SizedBox(
                            width: 4,
                          ),
                          Text("likes")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(
                            width: 4,
                          ),
                          Text("Share")
                        ],
                      )
                    ],
                  ).px16().py32(),
                  Text(
                    articles.description,
                    style: const TextStyle(height: 2.0),
                  ).p16(),
                  Text(
                    articles.content,
                    style: const TextStyle(height: 2),
                  ).p16(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Tap URL to see full article"),
                      Link(
                          uri: Uri.parse(articles.url),
                          target: LinkTarget.self,
                          builder: (context, followLink) {
                            return ElevatedButton(
                                onPressed: followLink,
                                child: const Text("URL"));
                          })
                    ],
                  ).p16()
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
