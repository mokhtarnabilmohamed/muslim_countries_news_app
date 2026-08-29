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
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Islamic Countries News",
          style: TextStyle(
            fontSize: 22,

            fontWeight: FontWeight(700),
            color: Colors.green,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 144, child: CountryListView()),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),

              ArticlesListViewBuilder(
                countryModel: CountryModel(
                  imagePath: "",
                  countryName: "countryName",
                  countryCode: "sa,eg,tr,sy,pk",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
