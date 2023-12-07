import 'package:clean_architecture/core/resources/data_state.dart';
import 'package:clean_architecture/feature/daily_news/data/models/article_model.dart';


abstract class ArticleRepository{
  Future<DataState<List<ArticleModel>>> getArticleNews();
}