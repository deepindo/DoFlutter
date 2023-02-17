import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});

  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我的"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("个人资料设置"),
          ),
          ListTile(
            title: Text("地址管理"),
          ),
        ],
      ),
    );
  }
}
