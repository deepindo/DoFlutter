import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final String _username = "";
  int _genderValue = -1;
  final String _phone = "";
  final String _birthday = "";
  DateTime? _dateTime;
  TimeOfDay? _timeOfDay;
  final String _salary = "";
  int _isNucleicAcidValue = -1;
  final String _remark = "";

  _onChangeGender(value) {
    setState(() {
      _genderValue = value;
    });
  }

  final List<Map> _hobbyList = [
    {"title": "运动", "checked": false},
    {"title": "厨艺", "checked": false},
    {"title": "摄影", "checked": false},
  ];

  List<Widget> _initHobbyWidgetList() {
    var tempList = _hobbyList.map((e) {
      return CheckboxListTile(
        title: Text(e["title"]),
        value: e["checked"],
        onChanged: (value) {
          setState(() {
            e["checked"] = value;
          });
        },
      );
    });
    return tempList.toList();
  }

  void _showDatePicker() async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970, 1, 1),
        lastDate: DateTime(2030, 12, 31));
    print(dateTime);
    if (dateTime != null) {
      setState(() {
        _dateTime = dateTime;
      });
    }
  }

  void _showTimePicker() async {
    TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    print(timeOfDay);
    if (timeOfDay != null) {
      setState(() {
        _timeOfDay = timeOfDay;
      });
    }
  }

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
        const TextField(
          decoration: InputDecoration(
            hintText: "请输入姓名",
            prefixIcon: Icon(Icons.people),
            border: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(30),
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("性别"),
        const SizedBox(
          height: 5,
        ),
        Row(
          //多个RadioListTile之间只能垂直排列，需要水平排列多个单选，只能自己自定义编写
          children: [
            Radio(
                value: 0, groupValue: _genderValue, onChanged: _onChangeGender),
            const Text("女"),
            const SizedBox(
              width: 5,
            ),
            Radio(
                value: 1, groupValue: _genderValue, onChanged: _onChangeGender),
            const Text("男"),
          ],
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
              prefixIcon: Icon(Icons.phone_iphone),
              prefixText: "+86",
              border: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(20),
                  )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("出生日期"),
        const SizedBox(
          height: 5,
        ),
        // const ListTile(
        //   title: Text("出生日期"),
        //   trailing: Icon(Icons.arrow_forward_ios),
        // ),
        // const Divider(),
        TextField(
          // readOnly: true,
          decoration: InputDecoration(
            hintText: "请选择出生日期",
            prefixIcon: const Icon(Icons.date_range),
            suffix: IconButton(
                onPressed: _showDatePicker,
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  // size: 10,
                )),
            // border: InputBorder.none,
            border: const OutlineInputBorder(
                // borderRadius: BorderRadius.all(20),
                ),
          ),
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
              prefixIcon: Icon(Icons.money),
              suffixText: "元",
              border: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(20),
                  )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("核酸"),
        const Divider(),
        const SizedBox(
          height: 5,
        ),
        RadioListTile(
            value: 0,
            title: const Text("未核酸"),
            groupValue: _isNucleicAcidValue,
            onChanged: (value) {
              setState(() {
                _isNucleicAcidValue = value as int;
              });
            }),
        RadioListTile(
            value: 1,
            title: const Text("已核酸"),
            groupValue: _isNucleicAcidValue,
            onChanged: (value) {
              setState(() {
                _isNucleicAcidValue = value as int;
              });
            }),
        const SizedBox(
          height: 10,
        ),
        const Text("爱好"),
        const Divider(),
        const SizedBox(
          height: 5,
        ),
        Column(
          children: _initHobbyWidgetList(),
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
            // prefixIcon: Icon(Icons.description),
            // suffixIcon: Icon(Icons.close),
            border: OutlineInputBorder(
                // borderRadius: BorderRadius.all(20),
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              print(_hobbyList);
              print(_genderValue);
              print(_isNucleicAcidValue);
            },
            child: const Text("提交")),
      ]),
    );
  }
}
