import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  // final Map arguments;
  // const WebPage({super.key, required this.arguments});
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  late WebViewController _webVC;

  @override
  void initState() {
    super.initState();
    print(Get.arguments);

    _webVC = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.cyan)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (progress) {
          // Update loading bar.
        },
        onPageStarted: (url) {},
        onPageFinished: (url) {},
        onWebResourceError: (error) {},
        onNavigationRequest: (request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(Uri.parse(
          "https://book.flutterchina.club/chapter12/flutter_web.html"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Get.arguments["title"])),
      body: WebViewWidget(controller: _webVC),
      // body: Text("请求对应aid=${Get.arguments["aid"]}的数据展示即可"),
    );
  }
}
