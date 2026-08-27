import 'package:dio/dio.dart';
import 'package:muslims_news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
      "https://newsdata.io/api/1/latest?apikey=pub_019e271847b8443d9fd0402080971bd1&language=ar&q=egypt",
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['results'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        imageUrl: article['image_url'],
        title: article['title'],
        description: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
