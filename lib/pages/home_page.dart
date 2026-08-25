import 'package:flutter/material.dart';
import 'package:muslims_news_app/widgets/category_list_view.dart';
import 'package:muslims_news_app/widgets/articles_list_view.dart';

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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("أخبار ", style: TextStyle(fontSize: 24)),
            Text(
              "المسلمين",
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
              SliverToBoxAdapter(
                child: SizedBox(height: 144, child: CategoryListView()),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),

              NewsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
