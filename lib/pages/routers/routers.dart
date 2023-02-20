import 'package:doflutter/pages/auth/login_page.dart';
import 'package:doflutter/pages/auth/register_page.dart';
import 'package:doflutter/pages/root/launch_page.dart';
import 'package:doflutter/pages/root/root_bottomNavigationBar.dart';
import 'package:doflutter/pages/subs/form_page.dart';
import 'package:doflutter/pages/subs/profile_page.dart';
import 'package:doflutter/pages/subs/search_page.dart';
import 'package:doflutter/pages/subs/setting_page.dart';
import 'package:doflutter/pages/subs/web_page.dart';
import 'package:flutter/material.dart';

//1. 配置路由
Map routes = {
  //命名路由
  "/": (context) => const RootBottomNavigationBar(),
  "/launch": (context) => const LaunchPage(),
  "/login": (context) => const LoginPage(),
  "/register": (context) => const RegisterPage(),
  "/search": (context) => const SearchPage(),
  "/setting": (context) => const SettingPage(),
  "/profile": (context) => const ProfilePage(),
  "/web": (context, {arguments}) => WebPage(arguments: arguments),
  //下面是原始写法
  "/form": (context) {
    return const FormPage();
  },
};

//2. 配置onGenerateRoute，固定写法，相当于一个中间件，可以做权限判断
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      // final Route route = MaterialPageRoute(builder: (context) {
      //   return pageContentBuilder(context, arguments: settings.arguments);
      // });
      //下面写法和上面一样
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
