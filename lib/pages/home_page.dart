import 'package:flutter/material.dart';
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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("أخبار ", style: TextStyle(fontSize: 24)),
            Text(
              "الدول الإسلامية",
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
                child: SizedBox(height: 144, child: CountryListView()),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),

              ArticlesListViewBuilder(
                countryCode:
                    "af, al, dz, az, bh, bd, bj, bn, bf, cm, td, km, ci, dj, eg, ga, gm, gn, gw, gy, id, ir, iq, jo, kz, kw, kg, lb, ly, my, mv, ml, mr, ma, mz, ne, ng, om, pk, ps, qa, sa, sn, sl, so, sd, sr, sy, tj, tg, tn, tr, tm, ae, ug, uz, ye",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
