import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("反馈"),
        shadowColor: Colors.black87,
      ),
      body: ListView(padding: const EdgeInsets.all(15), children: [
        const Text("姓名"),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "请输入姓名",
              prefixIcon: const Icon(Icons.near_me),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("性别"),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "请选择性别",
            prefixIcon: const Icon(Icons.near_me),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("出生日期"),
        const SizedBox(
          height: 5,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: "请选择出生日期",
              prefixIcon: Icon(Icons.near_me),
              border: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(20),
                  )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("手机号码"),
        const SizedBox(
          height: 5,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: "请输入手机号码",
              prefixIcon: Icon(Icons.near_me),
              prefixText: "+86",
              border: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(20),
                  )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("年收入"),
        const SizedBox(
          height: 5,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: "请输入年收入",
              prefixIcon: Icon(Icons.near_me),
              suffixText: "元",
              border: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(20),
                  )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("备注信息"),
        const SizedBox(
          height: 5,
        ),
        const TextField(
          maxLines: 5,
          decoration: InputDecoration(
              hintText: "请输入备注信息",
              prefixIcon: Icon(Icons.description),
              suffixIcon: Icon(Icons.close),
              border: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(20),
                  )),
        ),
        const SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}
