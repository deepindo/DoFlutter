import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("个人信息"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: _changeAvatarBottomSheet,
              child: ClipOval(
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
          // GestureDetector(
          //   //这个加载的图片显示模式有问题
          //   onTap: _changeAvatarBottomSheet,
          //   child: const CircleAvatar(
          //     foregroundImage:
          //         NetworkImage("https://www.itying.com/images/flutter/2.png"),
          //     radius: 40,
          //   ),
          // ),
          const ListTile(
            title: Text("昵称"),
          ),
          const ListTile(
            // onTap: _changeAvatarBottomSheet,
            title: Text(
              "姓别",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          const ListTile(
            // onTap: _changeAvatarBottomSheet,
            title: Text(
              "出生日期",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
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
    print(result);
  }
}
