import 'package:doflutter/global/config/app_colors.dart';
import 'package:doflutter/pages/vcs/setting_page.dart';
import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});

  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text("我的"),
          backgroundColor: Colors.white,
          // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const SettingPage();
                }));
                // Navigator.push(context, route);
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: _listView());
  }

  //列表
  ListView _listView() {
    return ListView(
      children: [
        _listHeader(),
        const SizedBox(
          height: 10,
        ),
        _operateGridView(),
        const Divider(),
        Container(
          alignment: Alignment.center,
          // color: Colors.green,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const [
              Text(
                "我的交易",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Expanded(child: SizedBox()),
              Text(
                "在闲鱼赚了6000.00元",
                style: TextStyle(fontSize: 12, color: AppColors.un2active),
              ),
            ],
          ),
        ),
        _myOrderGridView(),
        Container(
          // color: Colors.green,
          height: 40,
          padding: const EdgeInsets.only(left: 25),
          child: const Text(
            "我的会玩",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        _myPlayGridView(),
        Container(
          // color: Colors.green,
          height: 40,
          padding: const EdgeInsets.only(left: 25),
          child: const Text(
            "互动权益",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        _myActiveGridView(),
        Container(
          height: 10,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 247, 247, 247),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        _otherGridView(),
      ],
    );
  }

  //列表头部
  Widget _listHeader() {
    return Container(
      height: 90,
      // color: Colors.green,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          // ClipOval(
          //   child: Image.network(
          //     "https://www.itying.com/images/flutter/1.png",
          //     fit: BoxFit.cover,
          //     width: 70,
          //     height: 70,
          //   ),
          // ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://www.itying.com/images/flutter/2.png",
            ),
            radius: 35, // 半径
          ),
          // const ListTile(
          //   title: Text("迦若"),
          //   subtitle: Text("会员名: jiaruo"),
          // ), //这种不行
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("李白",
                  style: TextStyle(
                      // backgroundColor: Colors.green,
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
              Text(
                "会员名: d****n",
                style: TextStyle(
                    // backgroundColor: Colors.green,
                    fontSize: 12,
                    color: Color.fromARGB(221, 41, 41, 41)),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          const Icon(
            Icons.keyboard_arrow_right,
            size: 20,
          )
        ],
      ),
    );
  }

  //操作记录
  Widget _operateGridView() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 5,
      // padding: const EdgeInsets.all(0),
      childAspectRatio: 1.6,
      children: [
        Column(
          children: const [
            Text(
              "1",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text("收藏",
                style: TextStyle(
                    color: Color.fromARGB(221, 41, 41, 41), fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("历史浏览",
                style: TextStyle(
                    color: Color.fromARGB(221, 41, 41, 41), fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("关注",
                style: TextStyle(
                    color: Color.fromARGB(221, 41, 41, 41), fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("粉丝",
                style: TextStyle(
                    color: Color.fromARGB(221, 41, 41, 41), fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("0",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("贴子",
                style: TextStyle(
                    color: Color.fromARGB(221, 41, 41, 41), fontSize: 12)),
          ],
        )
      ],
    );
  }

  //我的交易
  Widget _myOrderGridView() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      childAspectRatio: 1.3,
      children: [
        Column(
          children: const [
            Icon(
              Icons.shopping_bag,
              color: Colors.orange,
              size: 32,
            ),
            Text("我发布的",
                style: TextStyle(
                    color: Color.fromARGB(221, 41, 41, 41), fontSize: 14)),
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.sell,
              color: Colors.blue,
              size: 32,
            ),
            Text("我卖出的"),
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.task,
              color: Color.fromARGB(255, 239, 223, 82),
              size: 32,
            ),
            Text("我买到的"),
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.shop,
              color: Color.fromARGB(255, 232, 107, 19),
              size: 32,
            ),
            Text("我可转卖的"),
          ],
        ),
      ],
    );
  }

  //我的会玩
  Widget _myPlayGridView() {
    return GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        childAspectRatio: 1.3,
        children: [
          Column(
            children: const [
              Icon(
                Icons.shop,
                color: Color.fromARGB(255, 232, 107, 19),
                size: 32,
              ),
              Text("我的圈子"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Color.fromARGB(255, 232, 107, 19),
                size: 32,
              ),
              Text("我的贴子"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Color.fromARGB(255, 232, 107, 19),
                size: 32,
              ),
              Text("玩家中心"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Color.fromARGB(255, 232, 107, 19),
                size: 32,
              ),
              Text("有奖活动"),
            ],
          )
        ]);
  }

  //互动权益
  Widget _myActiveGridView() {
    return GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        childAspectRatio: 1.3,
        children: [
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Color.fromARGB(255, 232, 107, 19),
                size: 32,
              ),
              Text("领闲鱼币"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Color.fromARGB(255, 232, 107, 19),
                size: 32,
              ),
              Text("闲鱼农场"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Color.fromARGB(255, 232, 107, 19),
                size: 32,
              ),
              Text("瓜分红包"),
            ],
          )
        ]);
  }

  //其他菜单
  Widget _otherGridView() {
    return GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        // crossAxisSpacing: 0, //水平子widget之间间距
        // mainAxisSpacing: 0, //垂直子widget之间间距
        childAspectRatio: 1.3,
        children: [
          Column(
            children: const [
              Icon(
                Icons.book,
                color: Colors.black,
                size: 32,
              ),
              Text("闲鱼公约"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.help,
                color: Colors.black,
                size: 32,
              ),
              Text("帮助与客服"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.shop,
                color: Colors.black,
                size: 32,
              ),
              Text("安全中心"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Colors.black,
                size: 32,
              ),
              Text("红包奖券"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Colors.black,
                size: 32,
              ),
              Text("认证招商"),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_service,
                color: Colors.black,
                size: 32,
              ),
              Text("我的拍卖"),
            ],
          )
        ]);
  }
}
