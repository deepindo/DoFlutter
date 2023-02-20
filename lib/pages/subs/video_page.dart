import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 227, 56),
        title: const Text(
          "视频",
        ),
      ),
      body: const Text("视频"),
    );
  }
}
