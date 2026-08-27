import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/article_model.dart';
import 'package:muslims_news_app/widgets/article_card.dart';

class ArticlesListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const ArticlesListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return ArticleCard(articleModel: articles[index]);
      }),
    );
  }
}
