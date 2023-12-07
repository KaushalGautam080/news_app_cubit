import 'package:clean_architecture/feature/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  }) : super(
          author: author,
          title: title,
          description: description,
          url: url,
          urlToImage: urlToImage,
          publishedAt: publishedAt,
          content: content,
        );

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      author: map["author"] ?? "XXXXXX",
      title: map["title"] ?? "XXXXXX",
      description: map["description"] ?? "XXXXXX",
      url: map["url"] ?? "XXXXXX",
      urlToImage: map["urlToImage"] ?? "XXXXXX",
      publishedAt: map["publishedAt"] ?? "XXXXXX",
      content: map["content"] ?? "XXXXXX",
    );
  }
}
