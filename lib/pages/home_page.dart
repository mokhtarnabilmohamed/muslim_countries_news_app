import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/country_model.dart';
import 'package:muslims_news_app/widgets/articles_list_view_builder.dart';
import 'package:muslims_news_app/widgets/country_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        scrolledUnderElevation: 0,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Islamic Countries News",
          style: TextStyle(
            fontSize: 22,

            fontWeight: FontWeight(700),
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 8)),

              SliverToBoxAdapter(
                child: Text(
                  "Latest News by Country",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(600),
                    color: Colors.black,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 8)),

              SliverToBoxAdapter(
                child: SizedBox(height: 160, child: CountryListView()),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 8)),
              SliverToBoxAdapter(
                child: Text(
                  "Latest General News",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(600),
                    color: Colors.black,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 8)),

              ArticlesListViewBuilder(
                countryModel: CountryModel(
                  imagePath: "",
                  countryName: "",
                  countryCode: "sa,eg,tr,sy,ps",
                  q: "saudi OR egypt OR turkey OR syria OR palestine",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
