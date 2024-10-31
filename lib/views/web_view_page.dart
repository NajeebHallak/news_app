import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebVewPage extends StatefulWidget {
  const WebVewPage({super.key, required this.url});
  final String url;
//   [
//   int start = 0,
//   int? end,
// ]

  @override
  State<WebVewPage> createState() => _WebVewPageState();
}

class _WebVewPageState extends State<WebVewPage> {
  final controller = WebViewController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url ??
          'https://newsapi.org/v2/everything?q=sport%7D&apiKey=c374e15f34ba4674a6fd7fc30767231a&https://newsapi.org/v2/everything?q=sport&apiKey=c374e15f34ba4674a6fd7fc30767231a'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'The Flutter Web View ',
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
