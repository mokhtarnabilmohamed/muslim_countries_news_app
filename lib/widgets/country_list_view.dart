import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/country_model.dart';
import 'package:muslims_news_app/widgets/country_card.dart';

class CountryListView extends StatelessWidget {
  const CountryListView({super.key});

  final List<CountryModel> categories = const [
    CountryModel(
      imagePath: 'lib/assets/af.svg',
      countryName: 'Islamic Republic of Afghanistan',
      countryCode: 'af',
    ),
    CountryModel(
      imagePath: 'lib/assets/al.svg',
      countryName: 'Republic of Albania',
      countryCode: 'al',
    ),
    CountryModel(
      imagePath: 'lib/assets/dz.svg',
      countryName: 'People\'s Democratic Republic of Algeria',
      countryCode: 'dz',
    ),
    CountryModel(
      imagePath: 'lib/assets/az.svg',
      countryName: 'Republic of Azerbaijan',
      countryCode: 'az',
    ),
    CountryModel(
      imagePath: 'lib/assets/bh.svg',
      countryName: 'Kingdom of Bahrain',
      countryCode: 'bh',
    ),
    CountryModel(
      imagePath: 'lib/assets/bd.svg',
      countryName: 'People\'s Republic of Bangladesh',
      countryCode: 'bd',
    ),
    CountryModel(
      imagePath: 'lib/assets/bj.svg',
      countryName: 'Republic of Benin',
      countryCode: 'bj',
    ),
    CountryModel(
      imagePath: 'lib/assets/bn.svg',
      countryName: 'Brunei Darussalam',
      countryCode: 'bn',
    ),
    CountryModel(
      imagePath: 'lib/assets/bf.svg',
      countryName: 'Burkina Faso',
      countryCode: 'bf',
    ),
    CountryModel(
      imagePath: 'lib/assets/cm.svg',
      countryName: 'Republic of Cameroon',
      countryCode: 'cm',
    ),
    CountryModel(
      imagePath: 'lib/assets/td.svg',
      countryName: 'Republic of Chad',
      countryCode: 'td',
    ),
    CountryModel(
      imagePath: 'lib/assets/km.svg',
      countryName: 'Union of the Comoros',
      countryCode: 'km',
    ),
    CountryModel(
      imagePath: 'lib/assets/ci.svg',
      countryName: 'Republic of Côte D’Ivoire',
      countryCode: 'ci',
    ),
    CountryModel(
      imagePath: 'lib/assets/dj.svg',
      countryName: 'Republic of Djibouti',
      countryCode: 'dj',
    ),
    CountryModel(
      imagePath: 'lib/assets/eg.svg',
      countryName: 'Arab Republic of Egypt',
      countryCode: 'eg',
    ),
    CountryModel(
      imagePath: 'lib/assets/ga.svg',
      countryName: 'Gabonese Republic',
      countryCode: 'ga',
    ),
    CountryModel(
      imagePath: 'lib/assets/gm.svg',
      countryName: 'Republic of the Gambia',
      countryCode: 'gm',
    ),
    CountryModel(
      imagePath: 'lib/assets/gn.svg',
      countryName: 'Republic of Guinea',
      countryCode: 'gn',
    ),
    CountryModel(
      imagePath: 'lib/assets/gw.svg',
      countryName: 'Republic of Guinea-Bissau',
      countryCode: 'gw',
    ),
    CountryModel(
      imagePath: 'lib/assets/gy.svg',
      countryName: 'Cooperative Republic of Guyana',
      countryCode: 'gy',
    ),
    CountryModel(
      imagePath: 'lib/assets/id.svg',
      countryName: 'Republic of Indonesia',
      countryCode: 'id',
    ),
    CountryModel(
      imagePath: 'lib/assets/ir.svg',
      countryName: 'Islamic Republic of Iran',
      countryCode: 'ir',
    ),
    CountryModel(
      imagePath: 'lib/assets/iq.svg',
      countryName: 'Republic of Iraq',
      countryCode: 'iq',
    ),
    CountryModel(
      imagePath: 'lib/assets/jo.svg',
      countryName: 'Hashemite Kingdom of Jordan',
      countryCode: 'jo',
    ),
    CountryModel(
      imagePath: 'lib/assets/kz.svg',
      countryName: 'Republic of Kazakhstan',
      countryCode: 'kz',
    ),
    CountryModel(
      imagePath: 'lib/assets/kw.svg',
      countryName: 'State of Kuwait',
      countryCode: 'kw',
    ),
    CountryModel(
      imagePath: 'lib/assets/kg.svg',
      countryName: 'Kyrgyz Republic',
      countryCode: 'kg',
    ),
    CountryModel(
      imagePath: 'lib/assets/lb.svg',
      countryName: 'Lebanese Republic',
      countryCode: 'lb',
    ),
    CountryModel(
      imagePath: 'lib/assets/ly.svg',
      countryName: 'State of Libya',
      countryCode: 'ly',
    ),
    CountryModel(
      imagePath: 'lib/assets/my.svg',
      countryName: 'Federation of Malaysia',
      countryCode: 'my',
    ),
    CountryModel(
      imagePath: 'lib/assets/mv.svg',
      countryName: 'Republic of Maldives',
      countryCode: 'mv',
    ),
    CountryModel(
      imagePath: 'lib/assets/ml.svg',
      countryName: 'Republic of Mali',
      countryCode: 'ml',
    ),
    CountryModel(
      imagePath: 'lib/assets/mr.svg',
      countryName: 'Islamic Republic of Mauritania',
      countryCode: 'mr',
    ),
    CountryModel(
      imagePath: 'lib/assets/ma.svg',
      countryName: 'Kingdom of Morocco',
      countryCode: 'ma',
    ),
    CountryModel(
      imagePath: 'lib/assets/mz.svg',
      countryName: 'Republic of Mozambique',
      countryCode: 'mz',
    ),
    CountryModel(
      imagePath: 'lib/assets/ne.svg',
      countryName: 'Republic of Niger',
      countryCode: 'ne',
    ),
    CountryModel(
      imagePath: 'lib/assets/ng.svg',
      countryName: 'Federal Republic of Nigeria',
      countryCode: 'ng',
    ),
    CountryModel(
      imagePath: 'lib/assets/om.svg',
      countryName: 'Sultanate of Oman',
      countryCode: 'om',
    ),
    CountryModel(
      imagePath: 'lib/assets/pk.svg',
      countryName: 'Islamic Republic of Pakistan',
      countryCode: 'pk',
    ),
    CountryModel(
      imagePath: 'lib/assets/ps.svg',
      countryName: 'State of Palestine',
      countryCode: 'ps',
    ),
    CountryModel(
      imagePath: 'lib/assets/qa.svg',
      countryName: 'State of Qatar',
      countryCode: 'qa',
    ),
    CountryModel(
      imagePath: 'lib/assets/sa.svg',
      countryName: 'Kingdom of Saudi Arabia',
      countryCode: 'sa',
    ),
    CountryModel(
      imagePath: 'lib/assets/sn.svg',
      countryName: 'Republic of Senegal',
      countryCode: 'sn',
    ),
    CountryModel(
      imagePath: 'lib/assets/sl.svg',
      countryName: 'Republic of Sierra Leone',
      countryCode: 'sl',
    ),
    CountryModel(
      imagePath: 'lib/assets/so.svg',
      countryName: 'Federal Republic of Somalia',
      countryCode: 'so',
    ),
    CountryModel(
      imagePath: 'lib/assets/sd.svg',
      countryName: 'Republic of the Sudan',
      countryCode: 'sd',
    ),
    CountryModel(
      imagePath: 'lib/assets/sr.svg',
      countryName: 'Republic of Suriname',
      countryCode: 'sr',
    ),
    CountryModel(
      imagePath: 'lib/assets/sy.svg',
      countryName: 'Syrian Arab Republic',
      countryCode: 'sy',
    ),
    CountryModel(
      imagePath: 'lib/assets/tj.svg',
      countryName: 'Republic of Tajikistan',
      countryCode: 'tj',
    ),
    CountryModel(
      imagePath: 'lib/assets/tg.svg',
      countryName: 'Togolese Republic',
      countryCode: 'tg',
    ),
    CountryModel(
      imagePath: 'lib/assets/tn.svg',
      countryName: 'Republic of Tunisia',
      countryCode: 'tn',
    ),
    CountryModel(
      imagePath: 'lib/assets/tr.svg',
      countryName: 'Republic of Turkey',
      countryCode: 'tr',
    ),
    CountryModel(
      imagePath: 'lib/assets/tm.svg',
      countryName: 'Turkmenistan',
      countryCode: 'tm',
    ),
    CountryModel(
      imagePath: 'lib/assets/ae.svg',
      countryName: 'State of the United Arab Emirates',
      countryCode: 'ae',
    ),
    CountryModel(
      imagePath: 'lib/assets/ug.svg',
      countryName: 'Republic of Uganda',
      countryCode: 'ug',
    ),
    CountryModel(
      imagePath: 'lib/assets/uz.svg',
      countryName: 'Republic of Uzbekistan',
      countryCode: 'uz',
    ),
    CountryModel(
      imagePath: 'lib/assets/ye.svg',
      countryName: 'Republic of Yemen',
      countryCode: 'ye',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,

      itemBuilder: (context, index) {
        return CountryCard(country: categories[index]);
      },
    );
  }
}
