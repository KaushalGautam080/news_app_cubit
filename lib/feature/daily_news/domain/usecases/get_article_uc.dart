
import 'package:clean_architecture/core/resources/data_state.dart';
import 'package:clean_architecture/core/usecases/usecase.dart';
import 'package:clean_architecture/feature/daily_news/data/models/article_model.dart';



import 'package:clean_architecture/feature/daily_news/domain/repositories/article_repository.dart';
class GetArticleUseCase implements UseCase<List<ArticleModel>>{
  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleModel>>> call() async{
   return await _articleRepository.getArticleNews();
  }
}