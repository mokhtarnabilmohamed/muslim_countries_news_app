import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/article_model.dart';
import 'package:muslims_news_app/services/news_service.dart';
import 'package:muslims_news_app/widgets/articles_list_view.dart';

class ArticlesListViewBuilder extends StatefulWidget {
  const ArticlesListViewBuilder({super.key});

  @override
  State<ArticlesListViewBuilder> createState() =>
      _ArticlesListViewBuilderState();
}

class _ArticlesListViewBuilderState extends State<ArticlesListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  Future<void> getNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    // setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(color: Colors.green),
            ),
          )
        : articles.isNotEmpty
        ? ArticlesListView(articles: articles)
        : SliverToBoxAdapter(
            child: Text("حدثت مشكلة، الرجاء المحاولة في وقت لاحق."),
          );
  }
}
