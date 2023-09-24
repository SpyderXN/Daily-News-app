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
    return Scaffold(
      bottomNavigationBar: const Text(
        "Version: 1.0.0",
        textAlign: TextAlign.center,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                  tag: Key(articles.title.toString()),
                  child: Image.network(articles.urlToImage)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Text(
                      articles.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ).p8(),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      articles.author,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      articles.publishedAt,
                      style: const TextStyle(fontSize: 10),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      articles.description,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          wordSpacing: 5),
                    ).p8(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      articles.content,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          wordSpacing: 5),
                    ).p8(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(articles.url)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
