import 'package:flutter/material.dart';
import 'package:doflutter/global/do_theme.dart';
import 'package:doflutter/pages/routers/routers.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:doflutter/global/do_language.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "左右",
      debugShowCheckedModeBanner: false,
      theme: DoTheme().lightTheme,
      darkTheme: DoTheme().darkTheme,
      themeMode: ThemeMode.system,
      translations: Messages(), // 你的翻译
      locale: const Locale("zh", "CN"), // 将会按照此处指定的语言翻译
      fallbackLocale: const Locale("en", "US"), // 添加一个回调语言选项，以备上面指定的语言翻译不存在
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh'),
        Locale('en'), // English
        Locale('fr'), // French
        Locale('ko'), // Korean-N&S
        Locale('ja'), // Janpanese
        Locale('de'), // German
        Locale('es'), // Spanish
      ],

      // home: const LaunchPage(),
      initialRoute: "/launch",
      // routes: routes,
      // onGenerateRoute: onGenerateRoute,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPage.routes,
    );
  }
}
