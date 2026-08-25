import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/category_model.dart';
import 'package:muslims_news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      imagePath: "lib/assets/flag_of_egypt.png",
      countryName: "مصر",
    ),
    CategoryModel(
      imagePath: "lib/assets/flag_of_palestine.png",
      countryName: "فلسطين",
    ),
    CategoryModel(
      imagePath: "lib/assets/flag_of_saudi_arabia.png",
      countryName: "السعودية",
    ),
    CategoryModel(
      imagePath: "lib/assets/flag_of_sudan.png",
      countryName: "السودان",
    ),
    CategoryModel(
      imagePath: "lib/assets/flag_of_syria.png",
      countryName: "سوريا",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,

      itemBuilder: (context, index) {
        return CategoryCard(category: categories[index]);
      },
    );
  }
}
