import 'package:flutter/material.dart';
import 'package:doflutter/res/course_list_data.dart';
import 'package:doflutter/tools/keepAliveWrapper.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
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

List<Widget> _initListData() {
  var tempList = courseDataList.map((v) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              v["imageUrl"],
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(v["imageUrl"]),
              // radius: 15, //在listTile中不设置，会由右边文字决定大小
            ),
            // title: Text("iOS"),
            title: Text(v["title"]),
            subtitle: Text(v["author"]),
          )
        ],
      ),
    );
  });
  return tempList.toList();
}

final List<Widget> _tabContentControllerList = [
  KeepAliveWrapper(
    child: ListView(
      children: _initListData(),
    ),
  ),
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

//混入的到底是SingleTickerProviderStateMixin还是下面这个
class _CoursePageState extends State<CoursePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _tabList.length, vsync: this, initialIndex: 0);

    _tabController.addListener(() {
      //点击事件会触发两次，用下面的判断，屏蔽掉一次
      if (_tabController.animation!.value == _tabController.index) {
        //滚动&点击切换都可以监听
        print(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  //初始化列表数据
  // List<Widget> _initListData() {
  //   var tempList = courseDataList.map((v) {
  //     return Card(
  //       margin: const EdgeInsets.all(10),
  //       elevation: 10,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //       child: Column(
  //         children: [
  //           AspectRatio(
  //             aspectRatio: 16 / 9,
  //             child: Image.network(
  //               v["imageUrl"],
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           ListTile(
  //             leading: CircleAvatar(
  //               backgroundImage: NetworkImage(v["imageUrl"]),
  //               // radius: 15, //在listTile中不设置，会由右边文字决定大小
  //             ),
  //             // title: Text("iOS"),
  //             title: Text(v["title"]),
  //             subtitle: Text(v["author"]),
  //           )
  //         ],
  //       ),
  //     );
  //   });
  //   return tempList.toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("学习"),
        elevation: 0.5,
        // backgroundColor: Colors.red,
        bottom: TabBar(
          tabs: _tabList,
          onTap: (value) {
            //只是点击事件
            print("ontap${value}");
          },
          controller: _tabController,
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabContentControllerList,
      ),
      // [
      //   Card(
      //     margin: const EdgeInsets.all(10),
      //     elevation: 10,
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //     child: Column(
      //       children: [
      //         AspectRatio(
      //           aspectRatio: 16 / 9,
      //           child: Image.network(
      //             "https://www.itying.com/images/flutter/1.png",
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         const ListTile(
      //           leading: CircleAvatar(
      //             backgroundImage: NetworkImage(
      //                 "https://www.itying.com/images/flutter/1.png"),
      //             // radius: 15,
      //           ),
      //           title: Text("iOS"),
      //           subtitle: Text("Runtimer进阶课程"),
      //         )
      //       ],
      //     ),
      //   ),
      //   Card(
      //     margin: const EdgeInsets.all(10),
      //     elevation: 10,
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //     child: Column(
      //       children: [
      //         AspectRatio(
      //           aspectRatio: 16 / 9,
      //           child: Image.network(
      //             "https://www.itying.com/images/flutter/2.png",
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         const ListTile(
      //           leading: CircleAvatar(
      //             backgroundImage: NetworkImage(
      //                 "https://www.itying.com/images/flutter/2.png"),
      //             radius: 15,
      //           ),
      //           title: Text("iOS"),
      //           subtitle: Text("Runtimer进阶课程"),
      //         )
      //       ],
      //     ),
      //   )
      // ],
    );
    // );
  }
}
