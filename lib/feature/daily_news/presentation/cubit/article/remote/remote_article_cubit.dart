import 'package:clean_architecture/core/resources/data_state.dart';
import 'package:clean_architecture/feature/daily_news/data/models/article_model.dart';
import 'package:clean_architecture/feature/daily_news/presentation/cubit/article/remote/remote_article_state.dart';
import 'package:clean_architecture/injector/injection.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteArticleCubit extends Cubit<RemoteArticleState>{
  List<ArticleModel> articles =[];

  RemoteArticleCubit():super(Loading());

  GetNewsState get _state => GetNewsState(articles: articles);

  getArticle() async{
    final dState = await getArticleUseCase.call();
    if(dState is DataSuccess){
       articles = dState.data!;
       emit(_state);
    }

  }
 }