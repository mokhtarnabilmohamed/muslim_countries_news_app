import 'package:flutter/material.dart';
import 'package:muslims_news_app/widgets/article_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return ArticleCard();
      }),
    );
  }
}
