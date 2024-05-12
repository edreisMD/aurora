import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TwitterFeedView extends StatelessWidget {
  final WebViewController controller;

  TwitterFeedView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Twitter Feed')),
      body: WebViewWidget(controller: controller),
    );
  }
}