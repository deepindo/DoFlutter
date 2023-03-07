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
  bool _isLoadFinished = false;
  late final LinearProgressIndicator _indicator;
  late WebViewController _webVC;

  @override
  void initState() {
    super.initState();
    // print(Get.arguments);

    _indicator = LinearProgressIndicator(
      backgroundColor: Colors.green[100],
      color: Colors.green,
    );

    _webVC = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (progress) {
          print(progress);
          // Update loading bar.
          // _indicator.value = progress;
        },
        onPageStarted: (url) {},
        onPageFinished: (url) {
          setState(() {
            _isLoadFinished = true;
          });
        },
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
      body: !_isLoadFinished ? _indicator : WebViewWidget(controller: _webVC),
      // body: Text("请求对应aid=${Get.arguments["aid"]}的数据展示即可"),
    );
  }
}
