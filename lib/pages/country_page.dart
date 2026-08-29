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
        title: Text(
          "${country.countryName} News",
          textAlign: TextAlign.center,
          softWrap: true,
          overflow: TextOverflow.ellipsis,

          style: TextStyle(
            fontSize: 22,

            fontWeight: FontWeight(700),
            color: Colors.green,
          ),
          maxLines: 2,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [ArticlesListViewBuilder(countryModel: country)],
          ),
        ),
      ),
    );
  }
}
