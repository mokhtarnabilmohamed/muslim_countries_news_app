import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8.0),
      child: Container(
        height: 144,
        width: 200,
        alignment: AlignmentGeometry.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  category.countryName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight(500)),
                ),
              ),
            ),
            Container(
              height: 104,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(category.imagePath),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
