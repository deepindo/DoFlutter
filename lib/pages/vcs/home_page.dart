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
        TabController(length: _tabList.length, vsync: this, initialIndex: 0);

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
}
