import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/country_model.dart';
import 'package:muslims_news_app/widgets/country_card.dart';

class CountryListView extends StatelessWidget {
  const CountryListView({super.key});

  final List<CountryModel> categories = const [
    CountryModel(
      imagePath: 'lib/assets/images/flags/af.png',
      countryName: 'Islamic Republic of Afghanistan',
      countryCode: 'af',
      q: 'Afghanistan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/al.png',
      countryName: 'Republic of Albania',
      countryCode: 'al',
      q: 'Albania',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/dz.png',
      countryName: 'People\'s Democratic Republic of Algeria',
      countryCode: 'dz',
      q: 'Algeria',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/az.png',
      countryName: 'Republic of Azerbaijan',
      countryCode: 'az',
      q: 'Azerbaijan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/bh.png',
      countryName: 'Kingdom of Bahrain',
      countryCode: 'bh',
      q: 'Bahrain',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/bd.png',
      countryName: 'People\'s Republic of Bangladesh',
      countryCode: 'bd',
      q: 'Bangladesh',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/bj.png',
      countryName: 'Republic of Benin',
      countryCode: 'bj',
      q: 'Benin',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/bn.png',
      countryName: 'Brunei Darussalam',
      countryCode: 'bn',
      q: 'Brunei',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/bf.png',
      countryName: 'Burkina Faso',
      countryCode: 'bf',
      q: 'Burkina Faso',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/cm.png',
      countryName: 'Republic of Cameroon',
      countryCode: 'cm',
      q: 'Cameroon',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/td.png',
      countryName: 'Republic of Chad',
      countryCode: 'td',
      q: 'Chad',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/km.png',
      countryName: 'Union of the Comoros',
      countryCode: 'km',
      q: 'Comoros',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ci.png',
      countryName: 'Republic of Côte D’Ivoire',
      countryCode: 'ci',
      q: 'Côte D’Ivoire',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/dj.png',
      countryName: 'Republic of Djibouti',
      countryCode: 'dj',
      q: 'Djibouti',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/eg.png',
      countryName: 'Arab Republic of Egypt',
      countryCode: 'eg',
      q: 'Egypt',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ga.png',
      countryName: 'Gabonese Republic',
      countryCode: 'ga',
      q: 'Gabon',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/gm.png',
      countryName: 'Republic of the Gambia',
      countryCode: 'gm',
      q: 'Gambia',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/gn.png',
      countryName: 'Republic of Guinea',
      countryCode: 'gn',
      q: 'Guinea',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/gw.png',
      countryName: 'Republic of Guinea-Bissau',
      countryCode: 'gw',
      q: 'Guinea-Bissau',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/gy.png',
      countryName: 'Cooperative Republic of Guyana',
      countryCode: 'gy',
      q: 'Guyana',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/id.png',
      countryName: 'Republic of Indonesia',
      countryCode: 'id',
      q: 'Indonesia',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ir.png',
      countryName: 'Islamic Republic of Iran',
      countryCode: 'ir',
      q: 'Iran',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/iq.png',
      countryName: 'Republic of Iraq',
      countryCode: 'iq',
      q: 'Iraq',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/jo.png',
      countryName: 'Hashemite Kingdom of Jordan',
      countryCode: 'jo',
      q: 'Jordan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/kz.png',
      countryName: 'Republic of Kazakhstan',
      countryCode: 'kz',
      q: 'Kazakhstan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/kw.png',
      countryName: 'State of Kuwait',
      countryCode: 'kw',
      q: 'Kuwait',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/kg.png',
      countryName: 'Kyrgyz Republic',
      countryCode: 'kg',
      q: 'Kyrgyzstan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/lb.png',
      countryName: 'Lebanese Republic',
      countryCode: 'lb',
      q: 'Lebanon',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ly.png',
      countryName: 'State of Libya',
      countryCode: 'ly',
      q: 'Libya',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/my.png',
      countryName: 'Federation of Malaysia',
      countryCode: 'my',
      q: 'Malaysia',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/mv.png',
      countryName: 'Republic of Maldives',
      countryCode: 'mv',
      q: 'Maldives',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ml.png',
      countryName: 'Republic of Mali',
      countryCode: 'ml',
      q: 'Mali',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/mr.png',
      countryName: 'Islamic Republic of Mauritania',
      countryCode: 'mr',
      q: 'Mauritania',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ma.png',
      countryName: 'Kingdom of Morocco',
      countryCode: 'ma',
      q: 'Morocco',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/mz.png',
      countryName: 'Republic of Mozambique',
      countryCode: 'mz',
      q: 'Mozambique',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ne.png',
      countryName: 'Republic of Niger',
      countryCode: 'ne',
      q: 'Niger',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ng.png',
      countryName: 'Federal Republic of Nigeria',
      countryCode: 'ng',
      q: 'Nigeria',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/om.png',
      countryName: 'Sultanate of Oman',
      countryCode: 'om',
      q: 'Oman',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/pk.png',
      countryName: 'Islamic Republic of Pakistan',
      countryCode: 'pk',
      q: 'Pakistan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ps.png',
      countryName: 'State of Palestine',
      countryCode: 'ps',
      q: 'Palestine OR Gaza',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/qa.png',
      countryName: 'State of Qatar',
      countryCode: 'qa',
      q: 'Qatar',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/sa.png',
      countryName: 'Kingdom of Saudi Arabia',
      countryCode: 'sa',
      q: 'Saudi OR Saudi Arabia OR Riyadh',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/sn.png',
      countryName: 'Republic of Senegal',
      countryCode: 'sn',
      q: 'Senegal',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/sl.png',
      countryName: 'Republic of Sierra Leone',
      countryCode: 'sl',
      q: 'Sierra Leone',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/so.png',
      countryName: 'Federal Republic of Somalia',
      countryCode: 'so',
      q: 'Somalia',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/sd.png',
      countryName: 'Republic of the Sudan',
      countryCode: 'sd',
      q: 'Sudan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/sr.png',
      countryName: 'Republic of Suriname',
      countryCode: 'sr',
      q: 'Suriname',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/sy.png',
      countryName: 'Syrian Arab Republic',
      countryCode: 'sy',
      q: 'Syrian',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/tj.png',
      countryName: 'Republic of Tajikistan',
      countryCode: 'tj',
      q: 'Tajikistan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/tg.png',
      countryName: 'Togolese Republic',
      countryCode: 'tg',
      q: 'Togo',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/tn.png',
      countryName: 'Republic of Tunisia',
      countryCode: 'tn',
      q: 'Tunisia',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/tr.png',
      countryName: 'Republic of Turkey',
      countryCode: 'tr',
      q: 'Turkey',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/tm.png',
      countryName: 'Turkmenistan',
      countryCode: 'tm',
      q: 'Turkmenistan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ae.png',
      countryName: 'State of the United Arab Emirates',
      countryCode: 'ae',
      q: 'United Arab Emirates OR uae OR Dubai OR Abu Dhabi',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ug.png',
      countryName: 'Republic of Uganda',
      countryCode: 'ug',
      q: 'Uganda',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/uz.png',
      countryName: 'Republic of Uzbekistan',
      countryCode: 'uz',
      q: 'Uzbekistan',
    ),
    CountryModel(
      imagePath: 'lib/assets/images/flags/ye.png',
      countryName: 'Republic of Yemen',
      countryCode: 'ye',
      q: 'Yemen',
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
