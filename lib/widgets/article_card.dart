import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/article_model.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleCard({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        spacing: 4,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
            child: Image.network(
              fit: BoxFit.fill,
              width: double.infinity,
              height: 200,
              articleModel.imageUrl ??
                  "https://t3.ftcdn.net/jpg/10/22/24/80/360_F_1022248039_7LDxHRi3Mlt9BK3wzLBUGZp9XAO1gt2s.jpg",
            ),
          ),

          Text(
            articleModel.title,
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight(600),
            ),
          ),
          Text(
            articleModel.description ?? "لا يوجد وصف لهذا الخبر.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight(500),
            ),
          ),
        ],
      ),
    );
  }
}
