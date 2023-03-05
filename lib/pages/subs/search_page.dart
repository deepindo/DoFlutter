import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Text(
            "热门搜索",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            // direction: Axis.vertical,
            // alignment: WrapAlignment.spaceBetween,
            children: [
              WrapButton("三体 (全集)", onPressed: () {}),
              WrapButton("狂飙", onPressed: () {}),
              WrapButton("女总裁的上门女婿", onPressed: () {}),
              WrapButton("乡村神医", onPressed: () {}),
              WrapButton("绝世武魂", onPressed: () {}),
              WrapButton("北派盗墓笔记", onPressed: () {}),
              WrapButton("都市超级神医", onPressed: () {}),
              WrapButton("上门女婿", onPressed: () {}),
              WrapButton("寻龙天师", onPressed: () {}),
              WrapButton("年少有为", onPressed: () {}),
              WrapButton("斗罗大陆V重生唐三", onPressed: () {}),
              WrapButton("剑来", onPressed: () {})
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "搜索历史",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(),
          const ListTile(
            title: Text("星辰变"),
          ),
          const Divider(),
          const ListTile(
            title: Text("紫川"),
          ),
          const Divider(),
          const ListTile(
            title: Text("凡人修仙传"),
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.black45)),
              onPressed: () {},
              icon: const Icon(Icons.delete),
              label: const Text("清空历史记录"))
        ],
      ),
    );
  }
}

class WrapButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  // const WrapButton({super.key});
  // const WrapButton({super.key, required this.title, required this.onPressed});
  const WrapButton(this.title,
      {super.key,
      required this.onPressed}); //title放在{}外面是匿名参数，上一条放里面就要加required是命名参数

  //测试可选位置参数
  void _test(String a, String b, [String? c]) {
    // print("$a-$b-$c");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 216, 214, 214)),
            foregroundColor: MaterialStatePropertyAll(Colors.black45)),
        onPressed: () {
          _test("1", "2", "3");
        },
        child: Text(title));
  }
}

// //自定义按钮组件
// class WrapButton extends StatefulWidget {
//   const WrapButton({super.key});

//   @override
//   State<WrapButton> createState() => _WrapButtonState();
// }

// class _WrapButtonState extends State<WrapButton> {
//   String buttonTitle;

//   // void function
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         style: ButtonStyle(
//             backgroundColor:
//                 MaterialStatePropertyAll(Color.fromARGB(255, 216, 214, 214)),
//             foregroundColor: MaterialStatePropertyAll(Colors.black45)),
//         onPressed: () {},
//         child: Text("data"));
//   }
// }
