import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:muslims_news_app/models/country_model.dart';
import 'package:muslims_news_app/pages/country_page.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({super.key, required this.country});

  final CountryModel country;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CountryPage(country: country);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 8.0),
        child: Container(
          height: 160,
          width: 184,
          alignment: AlignmentGeometry.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 104,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                    image: AssetImage(country.imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    country.countryName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight(500)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
