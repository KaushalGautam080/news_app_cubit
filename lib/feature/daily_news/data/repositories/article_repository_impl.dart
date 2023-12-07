import 'package:clean_architecture/core/resources/data_state.dart';
import 'package:clean_architecture/feature/daily_news/data/datasource/remote/news_api_services.dart';
import 'package:clean_architecture/feature/daily_news/data/models/article_model.dart';

import 'package:clean_architecture/feature/daily_news/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  final _getNewsRemoteSourceImpl = GetNewsRemoteSourceImpl();
  @override
  Future<DataState<List<ArticleModel>>> getArticleNews() async {
    return _getNewsRemoteSourceImpl.getArticleNews();
  }
}
