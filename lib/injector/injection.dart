import 'package:clean_architecture/feature/daily_news/data/repositories/article_repository_impl.dart';
import 'package:clean_architecture/feature/daily_news/domain/usecases/get_article_uc.dart';

final articleRepoImpl = ArticleRepositoryImpl();
final getArticleUseCase = GetArticleUseCase(articleRepoImpl);
