import 'package:doflutter/pages/vcs/search_page.dart';
import 'package:doflutter/res/book_list_data.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List<Widget> _initBookList() {
    var tempList = bookDataList.map((v) {
      return Container(
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Image.network(
              v["coverUrl"],
              fit: BoxFit.cover,
              width: 200, //这里随到设置的，保证大于实际宽
              height: 130,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              v["name"],
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 14),
            ),
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
        backgroundColor: const Color.fromARGB(255, 246, 227, 56),
        title: const Text(
          "七猫免费小说",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const SearchPage();
                }));
              },
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 3,
        crossAxisSpacing: 20, //水平子间距
        mainAxisSpacing: 10, // 垂直子间距
        childAspectRatio: 0.6,
        children: _initBookList(),
      ),
    );
  }
}
