import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "leftright";
  String _password = "";
  late TextEditingController _usernameController;
  bool _isCheckProtocol = false;

  @override
  void initState() {
    super.initState();
    _usernameController =
        TextEditingController.fromValue(TextEditingValue(text: _username));
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
  }

  _loginButtonDidPressed() {
    // if (_isCheckProtocol && _username.isNotEmpty && _password.isNotEmpty) {
    Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
    // } else {
    //   //提示
    // }
  }

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
                    const Text("欢迎来到 左右, 立即", style: TextStyle(fontSize: 14)),
                    TextButton(
                        onPressed: () {
                          // print("点击注册");
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
                TextField(
                  controller: _usernameController,
                  onChanged: (value) {
                    setState(() {
                      _username = value;
                    });
                  },
                  textCapitalization: TextCapitalization.none,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "请输入用户名/手机号/邮箱",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 67, 66, 66))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                  textCapitalization: TextCapitalization.none,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "请输入密码",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 67, 66, 66)),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 44,
                    // padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                        onPressed: _loginButtonDidPressed,
                        child: const Text("登录"))),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    RoundCheckBox(
                      size: 18,
                      checkedWidget: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 12,
                      ),
                      checkedColor: Colors.green,
                      border: Border.all(
                        color: _isCheckProtocol ? Colors.green : Colors.green,
                        width: 1.5,
                      ),
                      isChecked: _isCheckProtocol,
                      onTap: (value) {
                        setState(() {
                          _isCheckProtocol = value!;
                        });
                      },
                    ),
                    // Checkbox(
                    //     value: _isCheckProtocol,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         _isCheckProtocol = value!;
                    //       });
                    //     }),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(Icons.check_box_outline_blank)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      //Row里面要用Expanded，才能使Text自动换行
                      child: Text(
                        "登录注册即代表同意《用户协议》和《隐私协议》",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
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
