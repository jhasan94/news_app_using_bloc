import 'dart:convert';
import 'package:news_api/data/model/api_result_model.dart';
import 'package:http/http.dart' as http;
import 'package:news_api/res/strings.dart';

abstract class ArticleRepository {
  Future<List<Articles>> getArticles();
}

class ArticleRepositoryImplementation implements ArticleRepository {
  @override
  Future<List<Articles>> getArticles() async {
    var resoponse = await http.get(AppStrings.cricArticleUrl);
    if (resoponse.statusCode == 200) {
      var data = json.decode(resoponse.body);
      List<Articles> articles = ApiResultModel.fromJson(data).articles;
      return articles;
    } else {
      throw Exception();
    }
  }
}
