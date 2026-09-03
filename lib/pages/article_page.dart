import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key, required this.articleUrl});

  final String articleUrl;

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.articleUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: WebViewWidget(controller: controller),
        ),
      ),
    );
  }
}
