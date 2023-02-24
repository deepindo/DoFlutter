import 'package:flutter/material.dart';
import 'package:doflutter/global/do_theme.dart';
import 'package:doflutter/pages/routers/routers.dart';
import 'package:get/get.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "DoFlutter",
      debugShowCheckedModeBanner: false,
      theme: doThemeData,
      // home: const LaunchPage(),
      initialRoute: "/launch",
      // routes: routes,
      // onGenerateRoute: onGenerateRoute,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPage.routes,
    );
  }
}
