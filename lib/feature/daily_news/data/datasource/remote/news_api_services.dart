import 'dart:convert';

import 'package:clean_architecture/core/constants/api_endpoints.dart';
import 'package:clean_architecture/core/exception/exception_handler.dart';
import 'package:clean_architecture/core/resources/data_state.dart';
import 'package:clean_architecture/feature/daily_news/data/models/article_model.dart';
import 'package:http/http.dart' as http;

abstract class GetNewsRemoteSource {
  Future<DataState<List<ArticleModel>>> getArticleNews();
}

class GetNewsRemoteSourceImpl implements GetNewsRemoteSource {
  @override
  Future<DataState<List<ArticleModel>>> getArticleNews() async {
    return await tryCatch<List<ArticleModel>>(callBack: () async {
      final response = await http.get(Uri.parse(newsAPIBaseURl));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        List<dynamic> body = json['articles'];
        print("json :${body.first}");
        List<ArticleModel> articles =
            body.map((dynamic item) => ArticleModel.fromJson(item)).toList();
            // print("api : $articles");
        return DataSuccess(data: articles);
      } 
      else {
        return const DataFailed<List<ArticleModel>>(
          error: "error",
          errorMsg: "errorMsg",
          errorType: ErrorType.notFound,
        );
      }
    });
  }
}
