import 'dart:async';
// import 'package:doflutter/pages/root/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  // 当前倒计时秒数
  int _currentSeconds = 6;
  // Timer
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    //
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {
        _currentSeconds--;
      });

      if (_currentSeconds <= 0) {
        _jumpRootPage();
      }
    });
  }

// 跳转主页
  void _jumpRootPage() {
    // 取消定时器
    _timer.cancel();
    //基本路由
    // Navigator.pushAndRemoveUntil(context,
    //     MaterialPageRoute(builder: (BuildContext context) {
    //   return const RootBottomNavigationBar();
    // }), (route) => false);
    //命名路由
    // Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
    //这里要判断是否登录
    Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/common/launch_01.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 15,
            right: 15,
            child: InkWell(
              onTap: _jumpRootPage,
              child: _skipButton(),
            ),
          ),
        ],
      ),
    );
  }

// 跳过按钮
  Widget _skipButton() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(25),
        ),
        width: 50,
        height: 50,
        // color: Colors.black.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "跳过",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "${_currentSeconds}s",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ));
  }
}
