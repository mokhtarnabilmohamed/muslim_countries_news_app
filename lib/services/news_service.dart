import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  getNews() async {
    Response response = await dio.get(
      "https://newsdata.io/api/1/latest?apikey=pub_019e271847b8443d9fd0402080971bd1&language=ar&q=gaza",
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['results'];
  }
}
