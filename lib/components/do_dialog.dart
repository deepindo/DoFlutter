import 'package:doflutter/global/do_size.dart';
import 'package:flutter/material.dart';

class DoDialog extends Dialog {
  final String? title;
  final String? content;
  final Function()? onTap;
  const DoDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onTap,
  });

  // const DoDialog(
  //   String msg, {
  //   super.key,
  //   required String remark,
  //   required this.title,
  //   required this.content,
  //   required this.onTap,
  // });//msg是匿名的参数，remark是命名的参数，其他this.的是要接收的参数，{}外匿名，内命名

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency, //背景透明
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.cyan,
          ),
          width: MediaQuery.of(context).size.width - DoSize.doMargin * 4,
          height: 200,
          child: _normalDialog(),
        ),
      ),
    );
  }

  Widget _wellDialog() {
    return Column(
      children: [],
    );
  }

  //常规方法实现的dialog
  Widget _normalDialog() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$title"),
              InkWell(onTap: onTap, child: const Icon(Icons.close_rounded))
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$content",
            softWrap: true,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ElevatedButton(onPressed: () {}, child: const Text("知悉")),
      ],
    );
  }

  //用stack&align实现的dialog
  Widget _stackAlignDialog() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Align(alignment: Alignment.centerLeft, child: Text("$title")),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: onTap, child: const Icon(Icons.close_rounded)),
              ),
            ],
          ),
        ),
        const Divider(),
        Container(
          // width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$content",
            softWrap: true,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
