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
            child: articleModel.imageUrl == null
                ? Image.asset(
                    'lib/assets/images/other/image_placeholder.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  )
                : Image.network(
                    articleModel.imageUrl!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'lib/assets/images/other/image_placeholder.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                      );
                    },
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
            articleModel.description ??
                "Unfortunately, there is no description for this article.",
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
