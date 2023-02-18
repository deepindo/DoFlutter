import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学习"),
        // backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("1112"),
          )
        ],
      ),
    );
  }
}
