import 'package:flutter/material.dart';
import 'package:doflutter/global/do_theme.dart';
import 'package:doflutter/pages/routers/routers.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "左右",
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh'),
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
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
