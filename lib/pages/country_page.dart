import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/country_model.dart';
import 'package:muslims_news_app/widgets/articles_list_view_builder.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({super.key, required this.country});

  final CountryModel country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("أخبار ", style: TextStyle(fontSize: 24)),
            Text(
              country.countryName,
              style: TextStyle(
                fontSize: 24,

                fontWeight: FontWeight(800),
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              ArticlesListViewBuilder(countryCode: country.countryCode),
            ],
          ),
        ),
      ),
    );
  }
}
