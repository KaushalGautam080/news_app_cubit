import 'package:clean_architecture/feature/daily_news/data/models/article_model.dart';
import 'package:equatable/equatable.dart';

abstract class RemoteArticleState extends Equatable {
  const RemoteArticleState();
  @override
  List<Object> get props => [];
}

class Loading extends RemoteArticleState{}

class GetNewsState extends RemoteArticleState{
  final List<ArticleModel> articles;
  const GetNewsState({required this.articles});

  @override
  List<Object> get props => [articles];
}

