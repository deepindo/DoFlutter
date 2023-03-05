import 'package:doflutter/global/do_colors.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _isEnableNotification = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: _changeAvatarBottomSheet,
            title: const Text(
              "个人资料设置",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),

          ListTile(
            onTap: _changeLanguageDialog,
            title: const Text(
              "语言设置",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            onTap: _changeLanguageDialog,
            title: const Text(
              "主题设置",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            onTap: _changeLanguageDialog,
            title: const Text(
              "深色模式",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          Container(
            height: 5,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 237, 236, 236),
            ),
          ),
          ListTile(
            title: const Text(
              "通知设置",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Switch(
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: DoColors.black9,
              value: _isEnableNotification,
              onChanged: (value) {
                //print("切换为${value}");
                setState(() {
                  _isEnableNotification = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              "账号与安全",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: const Text(
              "地址管理",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: const Text(
              "长辈模式",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: const Text(
              "黑名单",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: const Text(
              "新消息通知",
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
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: _logoutDialog,
                child: const Text(
                  "退出登录",
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

  //更换头像事件
  void _changeAvatarBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 290,
            child: ListView(
              children: [
                ListTile(
                  onTap: (() {
                    Navigator.pop(context, "拍照");
                  }),
                  title: const Text("拍照"),
                ),
                const Divider(),
                ListTile(
                  onTap: (() {
                    Navigator.pop(context, "从手机相册选择");
                  }),
                  title: const Text("从手机相册选择"),
                ),
                const Divider(),
                ListTile(
                  onTap: (() {
                    Navigator.pop(context, "保存图片");
                  }),
                  title: const Text("保存图片"),
                ),
                Container(
                  height: 10,
                  color: const Color.fromARGB(255, 247, 245, 245),
                ),
                ListTile(
                  onTap: (() {
                    Navigator.pop(context, "取消");
                  }),
                  title: const Text("取消"),
                ),
              ],
            ),
          );
        });
    // print(result);
  }

  //选择语言事件
  void _changeLanguageDialog() async {
    var result = await showDialog(
        // barrierDismissible: false,
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("请选择语言"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "中文");

                  // Fluttertoast.showToast(msg: "msg");
                  // Fluttertoast.showToast(
                  //     msg: "切换中文成功", gravity: ToastGravity.TOP);

                  // Fluttertoast.showToast(
                  //     msg: "切换中文成功",
                  //     toastLength: Toast.LENGTH_SHORT,
                  //     gravity: ToastGravity.TOP,
                  //     timeInSecForIosWeb: 1,
                  //     backgroundColor: Colors.red,
                  //     textColor: Colors.white,
                  //     fontSize: 16.0);
                },
                child: const Text("中文"),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "English");
                },
                child: const Text("English"),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "日本語");
                },
                child: const Text("日本語"),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "한국어");
                },
                child: const Text("한국어"),
              )
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
                    Navigator.pop(context, "confirm");
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/login", (route) => false);
                  },
                  child: const Text("确定")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, "cancel");
                  },
                  child: const Text("取消"))
            ],
          );
        });
    print(result);
  }
}
