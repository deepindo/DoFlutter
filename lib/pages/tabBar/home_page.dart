import 'package:doflutter/components/do_dialog.dart';
import 'package:doflutter/widget/page_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: PageHeader(
          onTapSearch: () {
            print("search");
          },
          onTapMessage: () {
            print("message");
          },
        ),
      ),
      body: TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return DoDialog(
                    title: "提示",
                    content: "这是提示信息的内容",
                    onTap: () {},
                  );
                });
          },
          child: const Text("测试")),
    );
  }
}
