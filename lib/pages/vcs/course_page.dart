import 'package:flutter/material.dart';
import 'package:doflutter/res/course_list_data.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  //初始化列表数据
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("学习"),
        elevation: 0.5,
        // backgroundColor: Colors.red,
      ),
      body: ListView(
        children: _initListData(),
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
      ),
    );
  }
}
