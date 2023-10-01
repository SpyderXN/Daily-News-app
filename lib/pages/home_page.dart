import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_news/models/articles.dart';
import 'package:flutter_news/pages/category_page.dart';
import 'package:flutter_news/pages/widgets/article_list_widget.dart';
import 'package:flutter_news/pages/widgets/news_header.dart';
import 'package:flutter_news/pages/widgets/news_header_everything.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 1));

    const apiKey = "ca75fb392995439ca0b4997ec99cff08";

    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=world&apiKey=$apiKey"));
    var articleJson = response.body;
    var decodeData = jsonDecode(articleJson);
    var productData = decodeData["articles"];
    ArticleModel.articles = List.from(productData)
        .map<Articles>((articles) => Articles.fromAPIToApp(articles))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: Vx.m16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NewsHeader(),
            const CategoryPage(),
            const SizedBox(
              height: 15,
            ),
            const EverythingHeaderWidget(),
            if (ArticleModel.articles != null &&
                ArticleModel.articles.isNotEmpty)
              const ArticleListWidget().expand()
            else
              const CircularProgressIndicator(
                color: Colors.amber,
              ).centered().expand()
          ],
        ),
      ),
    ));
  }
}
