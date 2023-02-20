import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("注册")),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 25,
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                const Text(
                  "请填写以下注册信息",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                ),
                // Row(
                //   children: [
                //     const Text("欢迎来到DoFlutter, 立即",
                //         style: TextStyle(fontSize: 14)),
                //     TextButton(
                //         onPressed: () {
                //           print("点击注册");
                //           // Navigator.pushNamed(context, "/register");
                //           Navigator.push(context, MaterialPageRoute(
                //               builder: (BuildContext context) {
                //             return const RegisterPage();
                //           }));
                //         },
                //         child: const Text("注册")),
                //   ],
                // ),
                const SizedBox(
                  height: 50,
                ),
                const TextField(
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration(
                      hintText: "请输入手机号",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 67, 66, 66))),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration(
                      hintText: "请输入密码",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 67, 66, 66))),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration(
                      hintText: "请输入确认密码",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 67, 66, 66))),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 44,
                    // padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("注册"))),
                const SizedBox(
                  height: 20,
                ),
                // Row(
                //   children: [
                //     IconButton(
                //         onPressed: () {},
                //         icon: const Icon(Icons.check_box_outline_blank)),
                //     const Text("登录注册即代表同意《用户协议》和《隐私协议》"),
                //   ],
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
