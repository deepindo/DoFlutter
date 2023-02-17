// import 'package:dodu/config/app_theme.dart';
import 'package:doflutter/config/app_colors.dart';
import 'package:doflutter/pages/root/launch_page.dart';
import 'package:flutter/material.dart';
import 'config/app_theme.dart';
// import './pages/launch_page.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DoDu",
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const LaunchPage(),
    );
  }
}
