import 'package:flutter/material.dart';
import 'global/config/app_theme.dart';
import 'package:doflutter/pages/routers/routers.dart';

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
      // home: const LaunchPage(),
      initialRoute: "/launch",
      // routes: routes,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
