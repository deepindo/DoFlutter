import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _xFile;
  // final VideoPlayerController _videoPlayerController =
  // VideoPlayerController.file(File(_xFile!.path));

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  _initPlayerController(fileDir) async {
    _videoPlayerController = VideoPlayerController.file(fileDir);
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        aspectRatio: _videoPlayerController.value.aspectRatio);
  }

  @override
  void dispose() {
    super.dispose();
    try {
      _videoPlayerController.dispose();
      _chewieController.dispose();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 227, 56),
        title: const Text(
          "视频",
        ),
      ),
      body: Column(
        children: [
          TextButton(onPressed: _recordVideo, child: const Text("录制视频")),
          TextButton(onPressed: _pickVideo, child: const Text("选择视频")),
          _xFile == null
              ? const Text("没有视频")
              : AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: Chewie(controller: _chewieController)),
        ],
      ),
    );
  }

  _recordVideo() async {
    XFile? video = await _picker.pickVideo(source: ImageSource.camera);
    if (video != null) {
      print(video.path);
      await _initPlayerController(File(video.path));
      setState(() {
        _xFile = video;
      });
    }
  }

  _pickVideo() async {
    XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      print(video.path);
      await _initPlayerController(File(video.path));
      setState(() {
        _xFile = video;
      });
    }
  }
}
