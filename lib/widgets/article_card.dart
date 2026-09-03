import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/article_model.dart';
import 'package:muslims_news_app/pages/article_page.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel article;
  const ArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ArticlePage(articleUrl: article.articleUrl);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          spacing: 4,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: article.imageUrl == null
                  ? Image.asset(
                      'lib/assets/images/other/image_placeholder.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    )
                  : Image.network(
                      article.imageUrl!,
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
              article.title,
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight(600),
              ),
            ),
            Text(
              article.description ??
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
      ),
    );
  }
}
