// ignore_for_file: public_member_api_docs, sort_constructors_first
class CategoryModel {
  static List<Article> article = [];
}

class Article {
  final String title;
  final String description;
  final String url;
  final String imageUrl;
  final String content;
  final String author;

  Article({
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
    required this.content,
    required this.author,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        title: json['title'] ?? "Not available",
        description: json['description'] ?? "Not available",
        url: json['url'] ?? "Not available",
        imageUrl: json['urlToImage'] ??
            "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg?w=2000",
        content: json['content'] ??
            "No content available. Kindly tap the url to check the article.",
        author: json['author'] ?? "Anonymous");
  }
}
