import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "您好,",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Row(
                  children: [
                    const Text("欢迎来到DoFlutter, 立即",
                        style: TextStyle(fontSize: 14)),
                    TextButton(
                        onPressed: () {
                          print("点击注册");
                          Navigator.pushNamed(context, "/register");
                          // Navigator.push(context, MaterialPageRoute(
                          //     builder: (BuildContext context) {
                          //   return const RegisterPage();
                          // }));
                        },
                        child: const Text("注册")),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextField(
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration(
                      hintText: "请输入用户名/手机号/邮箱",
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
                Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 44,
                    // padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/", (route) => false);
                        },
                        child: const Text("登录"))),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.check_box_outline_blank)),
                    const Text("登录注册即代表同意《用户协议》和《隐私协议》"),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom: 20,
              left: 25,
              width: MediaQuery.of(context).size.width - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      iconSize: 36,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.wechat_rounded,
                        color: Colors.green,
                      )),
                  IconButton(
                      iconSize: 36,
                      onPressed: () {},
                      icon: const Icon(Icons.facebook, color: Colors.blue)),
                  IconButton(
                      iconSize: 36,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.apple,
                      )),
                  IconButton(
                      iconSize: 36,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
