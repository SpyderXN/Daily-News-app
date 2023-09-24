class ArticleModel {
  static List<Articles> articles = [];
}

class Articles {
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final String publishedAt;
  final String content;
  final String url;

  Articles(
      {required this.author,
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.publishedAt,
      required this.content,
      required this.url});

  static Articles fromAPIToApp(Map<String, dynamic> article) {
    return Articles(
        author: article["author"] ?? "No author available",
        title: article["title"] ?? "No title available",
        description: article["description"] ??
            "No description available. Please click the url to get the news.",
        urlToImage: article["urlToImage"] ??
            "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg?w=2000",
        publishedAt: article["publishedAt"] ?? "No date or time available",
        content: article["content"] ??
            "No content available. Please check the url to find the news content.",
        url: article["url"] ?? "No url found.");
  }

  // factory Articles.fromMap(Map<String, dynamic> map) {
  //   return Articles(
  //       author: map["author"],
  //       title: map["title"],
  //       description: map["description"],
  //       urlToImage: map["urlToImage"]);
  //   // publishedAt: map["publishedAt"],
  //   // content: map["content"]);
  // }

  toMap() => {
        "author": author,
        "title": title,
        "description": description,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt,
        "content": content
      };
}
