import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/article_model.dart';
import 'package:muslims_news_app/models/country_model.dart';
import 'package:muslims_news_app/services/news_service.dart';
import 'package:muslims_news_app/widgets/articles_list_view.dart';

class ArticlesListViewBuilder extends StatefulWidget {
  const ArticlesListViewBuilder({super.key, required this.countryModel});
  final CountryModel countryModel;
  @override
  State<ArticlesListViewBuilder> createState() =>
      _ArticlesListViewBuilderState();
}

class _ArticlesListViewBuilderState extends State<ArticlesListViewBuilder> {
  dynamic future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(countryModel: widget.countryModel);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ArticlesListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text("حدثت مشكلة، الرجاء المحاولة في وقت لاحق."),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(color: Colors.green),
            ),
          );
        }
      },
    );
  }
}
