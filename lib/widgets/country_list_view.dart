import 'package:flutter/material.dart';
import 'package:muslims_news_app/models/country_model.dart';
import 'package:muslims_news_app/widgets/country_card.dart';

class CountryListView extends StatelessWidget {
  const CountryListView({super.key});

  final List<CountryModel> categories = const [
    CountryModel(
      imagePath: 'lib/assets/af.svg',
      countryName: 'أفغانستان',
      countryCode: 'af',
    ),
    CountryModel(
      imagePath: 'lib/assets/al.svg',
      countryName: 'ألبانيا',
      countryCode: 'al',
    ),
    CountryModel(
      imagePath: 'lib/assets/dz.svg',
      countryName: 'الجزائر',
      countryCode: 'dz',
    ),
    CountryModel(
      imagePath: 'lib/assets/az.svg',
      countryName: 'أذربيجان',
      countryCode: 'az',
    ),
    CountryModel(
      imagePath: 'lib/assets/bh.svg',
      countryName: 'البحرين',
      countryCode: 'bh',
    ),
    CountryModel(
      imagePath: 'lib/assets/bd.svg',
      countryName: 'بنغلاديش',
      countryCode: 'bd',
    ),
    CountryModel(
      imagePath: 'lib/assets/bj.svg',
      countryName: 'بنين',
      countryCode: 'bj',
    ),
    CountryModel(
      imagePath: 'lib/assets/bn.svg',
      countryName: 'بروناي',
      countryCode: 'bn',
    ),
    CountryModel(
      imagePath: 'lib/assets/bf.svg',
      countryName: 'بوركينا فاسو',
      countryCode: 'bf',
    ),
    CountryModel(
      imagePath: 'lib/assets/cm.svg',
      countryName: 'الكاميرون',
      countryCode: 'cm',
    ),
    CountryModel(
      imagePath: 'lib/assets/td.svg',
      countryName: 'تشاد',
      countryCode: 'td',
    ),
    CountryModel(
      imagePath: 'lib/assets/km.svg',
      countryName: 'جزر القمر',
      countryCode: 'km',
    ),
    CountryModel(
      imagePath: 'lib/assets/ci.svg',
      countryName: 'ساحل العاج',
      countryCode: 'ci',
    ),
    CountryModel(
      imagePath: 'lib/assets/dj.svg',
      countryName: 'جيبوتي',
      countryCode: 'dj',
    ),
    CountryModel(
      imagePath: 'lib/assets/eg.svg',
      countryName: 'مصر',
      countryCode: 'eg',
    ),
    CountryModel(
      imagePath: 'lib/assets/ga.svg',
      countryName: 'الغابون',
      countryCode: 'ga',
    ),
    CountryModel(
      imagePath: 'lib/assets/gm.svg',
      countryName: 'غامبيا',
      countryCode: 'gm',
    ),
    CountryModel(
      imagePath: 'lib/assets/gn.svg',
      countryName: 'غينيا',
      countryCode: 'gn',
    ),
    CountryModel(
      imagePath: 'lib/assets/gw.svg',
      countryName: 'غينيا بيساو',
      countryCode: 'gw',
    ),
    CountryModel(
      imagePath: 'lib/assets/gy.svg',
      countryName: 'غيانا',
      countryCode: 'gy',
    ),
    CountryModel(
      imagePath: 'lib/assets/id.svg',
      countryName: 'إندونيسيا',
      countryCode: 'id',
    ),
    CountryModel(
      imagePath: 'lib/assets/ir.svg',
      countryName: 'إيران',
      countryCode: 'ir',
    ),
    CountryModel(
      imagePath: 'lib/assets/iq.svg',
      countryName: 'العراق',
      countryCode: 'iq',
    ),
    CountryModel(
      imagePath: 'lib/assets/jo.svg',
      countryName: 'الأردن',
      countryCode: 'jo',
    ),
    CountryModel(
      imagePath: 'lib/assets/kz.svg',
      countryName: 'كازاخستان',
      countryCode: 'kz',
    ),
    CountryModel(
      imagePath: 'lib/assets/kw.svg',
      countryName: 'الكويت',
      countryCode: 'kw',
    ),
    CountryModel(
      imagePath: 'lib/assets/kg.svg',
      countryName: 'قيرغيزستان',
      countryCode: 'kg',
    ),
    CountryModel(
      imagePath: 'lib/assets/lb.svg',
      countryName: 'لبنان',
      countryCode: 'lb',
    ),
    CountryModel(
      imagePath: 'lib/assets/ly.svg',
      countryName: 'ليبيا',
      countryCode: 'ly',
    ),
    CountryModel(
      imagePath: 'lib/assets/my.svg',
      countryName: 'ماليزيا',
      countryCode: 'my',
    ),
    CountryModel(
      imagePath: 'lib/assets/mv.svg',
      countryName: 'المالديف',
      countryCode: 'mv',
    ),
    CountryModel(
      imagePath: 'lib/assets/ml.svg',
      countryName: 'مالي',
      countryCode: 'ml',
    ),
    CountryModel(
      imagePath: 'lib/assets/mr.svg',
      countryName: 'موريتانيا',
      countryCode: 'mr',
    ),
    CountryModel(
      imagePath: 'lib/assets/ma.svg',
      countryName: 'المغرب',
      countryCode: 'ma',
    ),
    CountryModel(
      imagePath: 'lib/assets/mz.svg',
      countryName: 'موزمبيق',
      countryCode: 'mz',
    ),
    CountryModel(
      imagePath: 'lib/assets/ne.svg',
      countryName: 'النيجر',
      countryCode: 'ne',
    ),
    CountryModel(
      imagePath: 'lib/assets/ng.svg',
      countryName: 'نيجيريا',
      countryCode: 'ng',
    ),
    CountryModel(
      imagePath: 'lib/assets/om.svg',
      countryName: 'عُمان',
      countryCode: 'om',
    ),
    CountryModel(
      imagePath: 'lib/assets/pk.svg',
      countryName: 'باكستان',
      countryCode: 'pk',
    ),
    CountryModel(
      imagePath: 'lib/assets/ps.svg',
      countryName: 'فلسطين',
      countryCode: 'ps',
    ),
    CountryModel(
      imagePath: 'lib/assets/qa.svg',
      countryName: 'قطر',
      countryCode: 'qa',
    ),
    CountryModel(
      imagePath: 'lib/assets/sa.svg',
      countryName: 'المملكة العربية السعودية',
      countryCode: 'sa',
    ),
    CountryModel(
      imagePath: 'lib/assets/sn.svg',
      countryName: 'السنغال',
      countryCode: 'sn',
    ),
    CountryModel(
      imagePath: 'lib/assets/sl.svg',
      countryName: 'سيراليون',
      countryCode: 'sl',
    ),
    CountryModel(
      imagePath: 'lib/assets/so.svg',
      countryName: 'الصومال',
      countryCode: 'so',
    ),
    CountryModel(
      imagePath: 'lib/assets/sd.svg',
      countryName: 'السودان',
      countryCode: 'sd',
    ),
    CountryModel(
      imagePath: 'lib/assets/sr.svg',
      countryName: 'سورينام',
      countryCode: 'sr',
    ),
    CountryModel(
      imagePath: 'lib/assets/sy.svg',
      countryName: 'سوريا',
      countryCode: 'sy',
    ),
    CountryModel(
      imagePath: 'lib/assets/tj.svg',
      countryName: 'طاجيكستان',
      countryCode: 'tj',
    ),
    CountryModel(
      imagePath: 'lib/assets/tg.svg',
      countryName: 'توغو',
      countryCode: 'tg',
    ),
    CountryModel(
      imagePath: 'lib/assets/tn.svg',
      countryName: 'تونس',
      countryCode: 'tn',
    ),
    CountryModel(
      imagePath: 'lib/assets/tr.svg',
      countryName: 'تركيا',
      countryCode: 'tr',
    ),
    CountryModel(
      imagePath: 'lib/assets/tm.svg',
      countryName: 'تركمانستان',
      countryCode: 'tm',
    ),
    CountryModel(
      imagePath: 'lib/assets/ae.svg',
      countryName: 'الإمارات العربية المتحدة',
      countryCode: 'ae',
    ),
    CountryModel(
      imagePath: 'lib/assets/ug.svg',
      countryName: 'أوغندا',
      countryCode: 'ug',
    ),
    CountryModel(
      imagePath: 'lib/assets/uz.svg',
      countryName: 'أوزبكستان',
      countryCode: 'uz',
    ),
    CountryModel(
      imagePath: 'lib/assets/ye.svg',
      countryName: 'اليمن',
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
