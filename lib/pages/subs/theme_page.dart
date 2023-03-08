import 'package:flutter/material.dart';
import 'dart:math';
import 'package:get/get.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  final List<Color> _themeColorList = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.cyan,
    Colors.blue,
    Colors.purple,
  ];

  //准备了测试数据
  List<Widget> _prepareThemeColorWidgetList() {
    List<Widget> tempList = [];
    for (var i = 0; i < 15; i++) {
      tempList.add(Container(
        color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
            Random().nextInt(256), 1),
      ));
    }
    return tempList;

    // _themeColorList.map((e) {
    //   return InkWell(
    //     onTap: () {
    //       Get.changeTheme(
    //           ThemeData(appBarTheme: AppBarTheme(backgroundColor: e)));
    //     },
    //     child: Container(color: e),
    //   );
    // }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("主题选择")),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
        children: _themeColorList.map((e) {
          return InkWell(
            onTap: () {
              Get.changeTheme(ThemeData(
                  appBarTheme: AppBarTheme(backgroundColor: e),
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ButtonStyle(
                      // 文字颜色
                      foregroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.white;
                        } else {
                          return null;
                        }
                      }),
                      // 背景色
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.disabled)) {
                          return e.withOpacity(0.5);
                        } else {
                          return e;
                        }
                      }),
                    ),
                  )));
            },
            child: Container(color: e),
          );
        }).toList(),
      ),
    );
  }
}
