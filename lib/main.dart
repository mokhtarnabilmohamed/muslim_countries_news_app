import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:muslims_news_app/l10n/app_localizations.dart';
import 'package:muslims_news_app/models/article_model.dart';
import 'package:muslims_news_app/pages/home_page.dart';
import 'package:muslims_news_app/services/news_service.dart';

Future<void> main() async {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  );
  List<ArticleModel> articles = await NewsService(Dio()).getNews();
  print(articles);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("ar"),
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      home: const HomePage(),
    );
  }
}
