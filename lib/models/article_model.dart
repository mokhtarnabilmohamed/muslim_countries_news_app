class ArticleModel {
  final String articleUrl;

  final String? imageUrl;
  final String title;
  final String? description;

  ArticleModel({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.articleUrl,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      imageUrl: json['image_url'],
      title: json['title'],
      description: json['description'],
      articleUrl: json['link'],
    );
  }
}
