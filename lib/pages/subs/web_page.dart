import 'package:flutter/material.dart';

class WebPage extends StatefulWidget {
  final Map arguments;
  const WebPage({super.key, required this.arguments});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.arguments["title"])),
      body: Text("请求对应aid=${widget.arguments["aid"]}的数据展示即可"),
    );
  }
}
