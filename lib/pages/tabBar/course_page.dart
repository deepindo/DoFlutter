import 'package:flutter/material.dart';
import 'package:doflutter/resources/course_list_data.dart';
import 'package:doflutter/tools/keepAliveWrapper.dart';
import 'package:doflutter/global/do_language.dart';
import 'package:get/get.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

const List<Widget> _tabList = [
  Tab(
    text: "学习",
  ),
  Tab(
    text: "视频",
  ),
  Tab(
    text: "音乐",
  ),
  Tab(
    text: "每日推荐",
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
  var tempList = courseDataList.map((e) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              e["imageUrl"],
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(e["imageUrl"]),
              // radius: 15, //在listTile中不设置，会由右边文字决定大小
            ),
            // title: Text("iOS"),
            title: Text(e["title"]),
            subtitle: Text(e["author"]),
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
  PageView(
    scrollDirection: Axis.vertical,
    children: courseDataList.map((e) {
      return Container(
        width: double.infinity,
        color: Colors.black,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.network(
                e["imageUrl"],
                fit: BoxFit.fill,
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.slow_motion_video,
                      size: 50,
                      color: Colors.white,
                    )))
          ],
        ),
      );
    }).toList(),
  ),
  const Text("333"),
  const Text("444"),
  const Text("55"),
  const Text("6"),
  const Text("7"),
  const Text("8"),
  const Text("999"),
  const Text("10"),
  const Text("11"),
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
        // print(_tabController.index);
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
  //   var tempList = courseDataList.map((e) {
  //     return Card(
  //       margin: const EdgeInsets.all(10),
  //       elevation: 10,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //       child: Column(
  //         children: [
  //           AspectRatio(
  //             aspectRatio: 16 / 9,
  //             child: Image.network(
  //               e["imageUrl"],
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           ListTile(
  //             leading: CircleAvatar(
  //               backgroundImage: NetworkImage(e["imageUrl"]),
  //               // radius: 15, //在listTile中不设置，会由右边文字决定大小
  //             ),
  //             // title: Text("iOS"),
  //             title: Text(e["title"]),
  //             subtitle: Text(e["author"]),
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
        title: Text('世界'.tr),
        elevation: 0.5,
        // backgroundColor: Colors.red,
        bottom: TabBar(
          tabs: _tabList,
          onTap: (value) {
            //只是点击事件
            // print("ontap${value}");
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
