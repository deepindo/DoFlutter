import 'package:doflutter/global/do_colors.dart';
import 'package:flutter/material.dart';

class DoTheme {
  //白天模式
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white, // 主题色

    scaffoldBackgroundColor: Colors.white, //DoColors.page, // 脚手架下的页面背景色

    indicatorColor: DoColors.active, // 选项卡栏中所选选项卡指示器的颜色。

    //--------------按钮主题区域--------------
    // ElevatedButton 主题
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        // 文字颜色
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.white;
          } else {
            return null;
          }
        }),
        // 背景色
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return DoColors.primary.withOpacity(0.5);
          } else {
            return DoColors.primary;
          }
        }),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        // 文字颜色
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return DoColors.primary.withOpacity(0.5);
          } else {
            return DoColors.primary;
          }
        }),
        // 背景色
        // backgroundColor: MaterialStateProperty.resolveWith((states) {
        //   if (states.contains(MaterialState.disabled)) {
        //     return DoColors.primary.withOpacity(0.5);
        //   } else {
        //     return DoColors.primary;
        //   }
        // }),
      ),
    ),

    // iconButtonTheme: ,
    // outlinedButtonTheme: ,

    // accentColor: DoColors.primary, // 小部件的前景色（旋钮，文本，过度滚动边缘效果等）

    hoverColor: Colors.white.withOpacity(0.5),

    //--------------文本主题区域--------------
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: DoColors.unactive, // 文字颜色
      ),
    ),

    // tabbar的样式
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: DoColors.unactive,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: TextStyle(
        fontSize: 18,
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 12),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white, //DoColors.nav,
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),
      centerTitle: true,
      elevation: 0,
    ),

    splashColor: Colors.transparent, // 取消水波纹效果
    highlightColor: Colors.transparent, // 取消水波纹效果
    //bottomNavigationBar主题配置
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DoColors.nav,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: DoColors.unactive,
      selectedItemColor: DoColors.active,
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
    ),
  );

  //黑夜模式
  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white, // 主题色

    scaffoldBackgroundColor: Colors.black, //DoColors.page, // 脚手架下的页面背景色

    indicatorColor: DoColors.active, // 选项卡栏中所选选项卡指示器的颜色。

    // ElevatedButton 主题
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        // 文字颜色
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.black;
          } else {
            return null;
          }
        }),
        // 背景色
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return DoColors.primary.withOpacity(0.5);
          } else {
            return DoColors.primary;
          }
        }),
      ),
    ),

    // accentColor: DoColors.primary, // 小部件的前景色（旋钮，文本，过度滚动边缘效果等）

    hoverColor: Colors.black.withOpacity(0.5),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: DoColors.unactive, // 文字颜色
      ),
    ),

    // tabbar的样式
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: DoColors.unactive,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: TextStyle(
        fontSize: 18,
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 12),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white, //DoColors.nav,
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),
      centerTitle: true,
      elevation: 0,
    ),

    splashColor: Colors.transparent, // 取消水波纹效果
    highlightColor: Colors.transparent, // 取消水波纹效果
    //bottomNavigationBar主题配置
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DoColors.nav,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: DoColors.unactive,
      selectedItemColor: DoColors.active,
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
    ),
  );
}


// final ThemeData doThemeData = ThemeData(
//   primaryColor: DoColors.primary, // 主题色
//   scaffoldBackgroundColor: Colors.white, //DoColors.page, // 脚手架下的页面背景色

//   // indicatorColor: DoColors.active, // 选项卡栏中所选选项卡指示器的颜色。

//   // ElevatedButton 主题
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ButtonStyle(
//       // 文字颜色
//       foregroundColor: MaterialStateProperty.resolveWith((states) {
//         if (states.contains(MaterialState.disabled)) {
//           return Colors.white;
//         } else {
//           return null;
//         }
//       }),
//       // 背景色
//       backgroundColor: MaterialStateProperty.resolveWith((states) {
//         if (states.contains(MaterialState.disabled)) {
//           return DoColors.primary.withOpacity(0.5);
//         } else {
//           return DoColors.primary;
//         }
//       }),
//     ),
//   ),

//   // accentColor: DoColors.primary, // 小部件的前景色（旋钮，文本，过度滚动边缘效果等）

//   hoverColor: Colors.white.withOpacity(0.5),

//   textTheme: const TextTheme(
//     bodyMedium: TextStyle(
//         // color: DoColors.unactive, // 文字颜色
//         ),
//   ),

//   // tabbar的样式
//   tabBarTheme: const TabBarTheme(
//     // unselectedLabelColor: DoColors.unactive,
//     indicatorSize: TabBarIndicatorSize.label,
//     labelStyle: TextStyle(
//       fontSize: 18,
//     ),
//     labelPadding: EdgeInsets.symmetric(horizontal: 12),
//   ),

//   appBarTheme: const AppBarTheme(
//     // backgroundColor: Colors.white, //DoColors.nav,
//     foregroundColor: Colors.black,
//     titleTextStyle: TextStyle(
//         color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),
//     centerTitle: true,
//     elevation: 0,
//   ),

//   splashColor: Colors.transparent, // 取消水波纹效果
//   highlightColor: Colors.transparent, // 取消水波纹效果
//   //bottomNavigationBar主题配置
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     // backgroundColor: DoColors.nav,
//     type: BottomNavigationBarType.fixed,
//     // unselectedItemColor: DoColors.unactive,
//     // selectedItemColor: DoColors.active,
//     unselectedLabelStyle: TextStyle(
//       fontSize: 12,
//     ),
//     selectedLabelStyle: TextStyle(
//       fontSize: 12,
//     ),
//   ),
// );

