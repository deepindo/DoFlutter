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
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return DoDialog(
                    title: "提示",
                    content:
                        "我1们发现TextField默认会利eld默认会利eld默认会利eld默认会利eld默认会利认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默认会利eld默",
                    onTap: () {
                      print("close");
                      Navigator.pop(context);
                    },
                  );
                });
          },
        ),
      ),
      body: TextButton(onPressed: () {}, child: const Text("测试")),
    );
  }
}
