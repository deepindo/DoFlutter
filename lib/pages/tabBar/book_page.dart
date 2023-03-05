import 'package:flutter/material.dart';
import 'package:doflutter/resources/book_list_data.dart';
import 'package:doflutter/components/do_dialog.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  List<Widget> _initBookList() {
    var tempList = bookDataList.map((v) {
      return Container(
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Image.network(
              v["coverUrl"],
              // color: Colors.black,
              fit: BoxFit.cover,
              // scale: 2.1,
              width: 190, //这里随到设置的，保证大于实际宽
              height: 130,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              v["name"],
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
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
          "免费小说",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (BuildContext context) {
                //   return const SearchPage();
                // }));

                //命名路由
                Navigator.pushNamed(context, "/search");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                // print("web");
                //   Navigator.pushNamed(context, "/web",
                //       arguments: {"title": "最新活动", "aid": 12});
                // Get.toNamed("web",
                //     arguments: {"title": "Flutter实战二", "aid": 12});
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return DoDialog(
                        title: "更多信息",
                        content:
                            "Flutter 目前已经支持macOS、Windows、Linux、Android、iOS、Web等多个平台这些平台中除了Web平台会比较特殊一些，因为除了它其余的“平台”都是操作系统",
                        onTap: () {
                          // print("close");
                          Navigator.pop(context);
                        },
                      );
                    });
              },
              icon: const Icon(Icons.more_horiz)),
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
