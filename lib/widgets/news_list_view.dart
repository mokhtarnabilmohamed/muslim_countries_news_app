import 'package:flutter/material.dart';
import 'package:muslims_news_app/widgets/news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return NewsCard();
      }),
    );
  }
}
