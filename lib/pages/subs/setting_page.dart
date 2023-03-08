import 'package:doflutter/global/do_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:doflutter/global/do_language.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // bool _isEnableNotification = true;
  bool _isEnableDarkMode = Get.isDarkMode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("设置".tr),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Get.toNamed("/profile");
            },
            title: Text(
              "个人资料设置".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),

          ListTile(
            onTap: _changeLanguageDialog,
            title: Text(
              "语言设置".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            onTap: _changeCustomTheme,
            title: Text(
              "主题设置".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            onTap: _changeDarkMode,
            title: Text(
              "深色模式".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: CupertinoSwitch(
                //统一为苹果风格的,两种组件实现的参数代表意思不太一样
                value: _isEnableDarkMode,
                // activeColor: Colors.green,
                // trackColor: DoColors.black9,
                // thumbColor: Colors.white,
                onChanged: (value) {
                  print("切换为${value}");
                  setState(() {
                    _isEnableDarkMode = value;
                    Get.changeTheme(_isEnableDarkMode
                        ? ThemeData.dark()
                        : ThemeData.light());
                  });
                }),
          ),
          ListTile(
            onTap: _changeCustomTheme,
            title: Text(
              "字体设置".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          Container(
            height: 5,
            decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 237, 236, 236),
                ),
          ),
          ListTile(
            title: Text(
              "通知设置".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            // trailing: Switch(
            //   activeColor: Colors.white,
            //   activeTrackColor: Colors.green,
            //   inactiveThumbColor: Colors.white,
            //   inactiveTrackColor: DoColors.black9,
            //   value: _isEnableNotification,
            //   onChanged: (value) {
            //     //print("切换为${value}");
            //     setState(() {
            //       _isEnableNotification = value;
            //     });
            //   },
            // ),
          ),
          ListTile(
            title: Text(
              "账号与安全".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: Text(
              "地址管理".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: Text(
              "关爱模式".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: Text(
              "黑名单".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: Text(
              "新消息通知".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: Text(
              "关于".tr,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Container(
            height: 44,
            // alignment: Alignment.center,
            // color: Colors.green,
            // margin: const EdgeInsets.symmetric(horizontal: 25),
            margin: const EdgeInsets.all(25),
            // padding: const EdgeInsets.all(2),
            child: ElevatedButton(
                // style: const ButtonStyle(
                //   backgroundColor: MaterialStatePropertyAll(Colors.green),
                // ),
                onPressed: _logoutDialog,
                child: Text(
                  "退出登录".tr,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
          // ElevatedButton.icon(
          //     onPressed: () {},
          //     icon: const Icon(Icons.logout_rounded),
          //     label: const Text("退出登录")),
          // TextButton(
          //     onPressed: () {
          //       print("文本按钮");
          //     },
          //     child: const Text("文本按钮")),
          // const OutlinedButton(
          //     style: ButtonStyle(
          //         side:
          //             MaterialStatePropertyAll(BorderSide(color: Colors.cyan))),
          //     onPressed: null,
          //     child: Text("边框按钮(改了边框颜色)")),
          // const IconButton(onPressed: null, icon: Icon(Icons.logout))
        ],
      ),
    );
  }

  _changeCustomTheme() {
    Get.toNamed("/theme");
  }

  _changeDarkMode() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    // Get.changeTheme(
    // ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.green)));
    // Get.changeThemeMode(ThemeMode.system);
  }

  //选择语言事件
  void _changeLanguageDialog() async {
    var result = await showDialog(
        // barrierDismissible: false,
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("请选择语言".tr),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Get.back(result: "中文");
                  Get.updateLocale(const Locale("zh", "CN"));
                },
                child: Text("中文".tr),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Get.back(result: "英语");
                  Get.updateLocale(const Locale("en", "US"));
                },
                child: Text("英语".tr),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Get.back(result: "法语");
                  Get.updateLocale(const Locale("fr", "FR"));
                },
                child: Text("法语".tr),
              ),
              // const Divider(),
              // SimpleDialogOption(
              //   onPressed: () {
              //     Get.back(result: "朝鲜语");
              //     Get.updateLocale(const Locale("ko", "KP"));
              //   },
              //   child: Text("朝鲜语".tr),
              // ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Get.back(result: "韩语");
                  Get.updateLocale(const Locale("ko", "KR"));
                },
                child: Text("韩语".tr),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Get.back(result: "日语");
                  Get.updateLocale(const Locale("ja", "JP"));
                },
                child: Text("日语".tr),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Get.back(result: "德语");
                  Get.updateLocale(const Locale("de", "DE"));
                },
                child: Text("德语".tr),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Get.back(result: "西班牙语");
                  Get.updateLocale(const Locale("es", "ES"));
                },
                child: Text("西班牙语".tr),
              ),
            ],
          );
        });
    print(result);
  }

  //退出登录事件
  void _logoutDialog() async {
    var result = await showDialog(
        // barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示"),
            content: const Text("确定要退出登录吗？"),
            actions: [
              TextButton(
                  onPressed: () {
                    Get.back(result: "confirm");
                    Get.offAllNamed("/login");
                  },
                  child: const Text("确定")),
              TextButton(
                  onPressed: () {
                    Get.back(result: "cancel");
                  },
                  child: const Text("取消"))
            ],
          );
        });
    print(result);
  }
}
