import 'package:flutter/material.dart';
import 'package:doflutter/global/do_colors.dart';
import 'package:get/get.dart';

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
          // backgroundColor: Colors.white,
          // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(
              onPressed: () {
                //普通路由
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (BuildContext context) {
                //   return const SettingPage();
                // }));

                //命名路由
                Navigator.pushNamed(context, "/setting");
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        drawer: _leftDrawer(),
        body: _listView());
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
                              "https://www.itying.com/images/flutter/1.png"),
                          fit: BoxFit.fill)),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.itying.com/images/flutter/2.png"),
                  ),
                  otherAccountsPictures: [
                    Image.network(
                        "https://www.itying.com/images/flutter/3.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/4.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/5.png"),
                  ],
                  accountName: const Text(
                    "紫川秀",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: const Text(
                    "zichuanxiu@qq.com",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.play_circle),
            title: Text("订单"),
          ),
          const ListTile(
            leading: Icon(Icons.wallet),
            title: Text("任务"),
          ),
          const ListTile(
            leading: Icon(Icons.album),
            title: Text("喜欢"),
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

  //列表
  ListView _listView() {
    return ListView(
      children: [
        _stackPositionedListHeader(),
        // _customListHeader(),
        // _listTileHeader(),
        const SizedBox(
          height: 10,
        ),
        _operateGridView(),
        const Divider(),
        Container(
          // alignment: Alignment.center,
          // color: Colors.green,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "我的交易",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              // Expanded(child: SizedBox()),
              Text(
                "在闲鱼赚了6000.00元",
                style: TextStyle(fontSize: 12, color: DoColors.un2active),
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
          decoration: const BoxDecoration(),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        _otherGridView(),
      ],
    );
  }

  //用stack和positioned实现的
  Widget _stackPositionedListHeader() {
    return InkWell(
      //这里使用GestureDetector，空白区域无法触发事件，所以选用InkWell
      onTap: () {
        Get.toNamed("/profile");
      },
      child: SizedBox(
        height: 90,
        // color: Colors.green,
        // alignment: Alignment.centerLeft,
        child: Stack(alignment: AlignmentDirectional.center, children: [
          const Positioned(
              left: 25,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://www.itying.com/images/flutter/2.png",
                ),
                radius: 35, // 半径
              )),
          Positioned(
              left: 105,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("李白",
                      style: TextStyle(
                          // backgroundColor: Colors.green,
                          fontSize: 18,
                          // color: Colors.black,
                          fontWeight: FontWeight.w800)),
                  Text("会员名: d****n",
                      style: TextStyle(
                        // backgroundColor: Colors.green,
                        fontSize: 12,
                      )),
                ],
              )),
          const Positioned(
              right: 25,
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 20,
              )),
        ]),
      ),
    );
  }

  //自定义列表头部，实现的方式比较自由
  Widget _customListHeader() {
    return InkWell(
      onTap: () {
        Get.toNamed("/profile");
      },
      child: Container(
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
                Text("会员名: d****n",
                    style: TextStyle(
                      // backgroundColor: Colors.green,
                      fontSize: 12,
                    )),
              ],
            ),
            const Expanded(child: SizedBox()),
            const Icon(
              Icons.keyboard_arrow_right,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  //不是非常在意细节的，可以直接用一个ListTile实现整个header,
  //实现最快，但是很多细节不方便调整
  Widget _listTileHeader() {
    return const SizedBox(
      height: 90,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://www.itying.com/images/flutter/2.png",
          ),
          radius: 35, // 半径
        ),
        title: Text("xxxxx"),
        subtitle: Text("data"),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 20,
        ),
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
                  // color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text("收藏", style: TextStyle(fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("1",
                style: TextStyle(
                    // color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("历史浏览", style: TextStyle(fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("1",
                style: TextStyle(
                    // color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("关注", style: TextStyle(fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("1",
                style: TextStyle(
                    // color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("粉丝", style: TextStyle(fontSize: 12)),
          ],
        ),
        Column(
          children: const [
            Text("0",
                style: TextStyle(
                    // color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            Text("贴子", style: TextStyle(fontSize: 12)),
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
            Text("我发布的", style: TextStyle(fontSize: 14)),
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
              color: Colors.yellow,
              size: 32,
            ),
            Text("我买到的"),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.shop,
              color: Colors.orange[100],
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
            children: [
              Image.asset(
                'assets/images/icons/type_pdf.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("我的圈子"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_keynote.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("我的贴子"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_numbers.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("玩家中心"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_pages.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("有奖活动"),
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
            children: [
              Image.asset(
                'assets/images/icons/type_ppt.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("领闲鱼币"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_psd.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("闲鱼农场"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_rar.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("瓜分红包"),
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
            children: [
              Image.asset(
                'assets/images/icons/type_ai.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("闲鱼公约"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_app.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("帮助与客服"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_axls.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("安全中心"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_c4d.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("红包奖券"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_excel.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("认证招商"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/icons/type_web.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
              const Text("我的拍卖"),
            ],
          )
        ]);
  }
}
