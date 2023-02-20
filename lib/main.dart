import 'package:doflutter/pages/root/launch_page.dart';
import 'package:doflutter/pages/subs/form_page.dart';
import 'package:doflutter/pages/subs/profile_page.dart';
import 'package:doflutter/pages/subs/search_page.dart';
import 'package:doflutter/pages/subs/setting_page.dart';
import 'package:flutter/material.dart';
import 'global/config/app_theme.dart';

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
      initialRoute: "/",
      routes: {
        //命名路由
        "/search": (context) => const SearchPage(),
        "/setting": (context) => const SettingPage(),
        "/profile": (context) => const ProfilePage(),
        "/form": (context) {
          return const FormPage();
        },
      },
    );
  }
}
