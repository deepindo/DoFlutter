import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebPage extends StatefulWidget {
  // final Map arguments;
  // const WebPage({super.key, required this.arguments});
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  void initState() {
    super.initState();
    print(Get.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Get.arguments["title"])),
      body: Text("请求对应aid=${Get.arguments["aid"]}的数据展示即可"),
    );
  }
}
