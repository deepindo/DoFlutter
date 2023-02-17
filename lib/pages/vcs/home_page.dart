import 'package:doflutter/components/home_page_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

const List<Widget> _tabList = [
  Tab(
    text: "每日推荐",
  ),
  Tab(
    text: "私人FM",
  ),
  Tab(
    text: "歌单",
  ),
  Tab(
    text: "排行榜",
  ),
  Tab(
    text: "有声书",
  ),
  Tab(
    text: "数字专辑",
  ),
  Tab(
    text: "直播",
  ),
  Tab(
    text: "关注新歌",
  ),
  Tab(
    text: "一歌一遇",
  ),
  Tab(
    text: "收藏家",
  ),
  Tab(
    text: "游戏专区",
  ),
];

final List<Widget> _tabContentControllerList = [
  Text("1111"),
  Text("222"),
  Text("333"),
  Text("444"),
  Text("55"),
  Text("6"),
  Text("7"),
  Text("8"),
  Text("999"),
  Text("10"),
  Text("11"),
];

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _tabList.length, vsync: this, initialIndex: 1);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HomePageHeader(),
        bottom: TabBar(
          tabs: _tabList,
          controller: _tabController,
          isScrollable: true,
        ),
        // centerTitle: true,
        // backgroundColor: Colors.green,
      ),
      // drawer: leftDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: _tabContentControllerList,
      ),
    );
  }

  ///左侧抽屉
  Widget leftDrawer() {
    return Column(
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
                  Image.network("https://www.itying.com/images/flutter/3.png"),
                  Image.network("https://www.itying.com/images/flutter/4.png"),
                  Image.network("https://www.itying.com/images/flutter/5.png"),
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
    );
  }
}
