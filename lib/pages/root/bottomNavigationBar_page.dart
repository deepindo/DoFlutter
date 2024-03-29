import 'package:flutter/material.dart';
import 'package:doflutter/global/do_colors.dart';
import 'package:doflutter/pages/tabBar/home_page.dart';
import 'package:doflutter/pages/tabBar/course_page.dart';
import 'package:doflutter/pages/tabBar/post_page.dart';
import 'package:doflutter/pages/tabBar/book_page.dart';
import 'package:doflutter/pages/tabBar/me_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

// item英文对应中文名集合
const Map<String, String> _bottomNavigationBarItemNameMap = {
  'home': '首页',
  'music': '世界',
  'post': '', //如果中间item像显示文字就写这，反之留空
  'video': '阅读',
  'me': '我的',
};

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  // 当前item显示索引
  int _currentIndex = 0;

  // 底部item数组
  final List<BottomNavigationBarItem> _bottomNavigationBarItmeList = [];

  // 页面数组
  final List<Widget> _pageList = const [
    HomePage(),
    CoursePage(),
    PostPage(),
    BookPage(),
    MePage(),
  ];

  // 底部item点击事件
  void _onTapBottomNavigationBarItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    // 底部item数组初始化
    _bottomNavigationBarItemNameMap.forEach((key, value) {
      _bottomNavigationBarItmeList.add(_navigationBarItem(key, value));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.cyan,
      //   title: const Text("这是外层标题"),
      // ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        iconSize: 25,
        items: _bottomNavigationBarItmeList,
        onTap: _onTapBottomNavigationBarItem,
      ),
      // drawer: _leftDrawer(),
      // endDrawer: const Drawer(
      //   child: Text("右侧"),
      // ),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }

  ///左侧抽屉
  Widget _leftDrawer() {
    return Drawer(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.itying.com/images/flutter/2.png"),
                          fit: BoxFit.fill)),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.itying.com/images/flutter/1.png"),
                  ),
                  otherAccountsPictures: [
                    Image.network(
                        "https://www.itying.com/images/flutter/3.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/4.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/5.png"),
                  ],
                  accountName: const Text("紫川秀"),
                  accountEmail: const Text("zichuanxiu@qq.com"),
                ),
              ),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.play_circle),
            title: Text("直播"),
          ),
          const ListTile(
            leading: Icon(Icons.wallet),
            title: Text("钱包"),
          ),
          const ListTile(
            leading: Icon(Icons.album),
            title: Text("相册"),
          ),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text("收藏"),
          ),
          const ListTile(
            leading: Icon(Icons.file_copy),
            title: Text("文件"),
          ),
        ],
      ),
    );
  }

  // item初始化的抽取
  BottomNavigationBarItem _navigationBarItem(key, value) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/icons/$key.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'assets/images/icons/${key}_selected.png',
        width: 24,
        height: 24,
      ),
      label: value,
      tooltip: "",
    );
  }

  // 正中浮动item
  Widget _floatingActionButton() {
    return Container(
      width: 48,
      height: 48,
      // color: Colors.yellow,
      margin: const EdgeInsets.only(top: 40),
      // padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      // alignment: Alignment.center,
      child: FloatingActionButton(
          backgroundColor: DoColors.nav,
          child: Image.asset(
            "assets/images/icons/post.png",
            width: 34,
            height: 34,
            fit: BoxFit.cover,
          ),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          }),
    );
  }
}
