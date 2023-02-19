import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              "个人资料设置",
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
              "支付设置",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
          ),
          ListTile(
            title: const Text(
              "尺码小助手",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_right)),
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
              "黑名单",
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
          Container(
            height: 5,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 237, 236, 236),
            ),
          ),
          ListTile(
            title: const Text(
              "新消息通知",
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
          ListTile(
            title: const Text(
              "新消息通知",
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
          ListTile(
            title: const Text(
              "新消息通知",
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
                onPressed: () {},
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
}
