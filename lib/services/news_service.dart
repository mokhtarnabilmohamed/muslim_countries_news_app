import 'package:dio/dio.dart';
import 'package:muslims_news_app/models/article_model.dart';
import 'package:muslims_news_app/models/country_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({
    required CountryModel countryModel,
  }) async {
    try {
      Response response = await dio.get(
        "https://newsdata.io/api/1/latest?apikey=pub_019e271847b8443d9fd0402080971bd1&language=en&category=politics,business,education,environment,technology&country=${countryModel.countryCode}&q=${countryModel.q}",
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
