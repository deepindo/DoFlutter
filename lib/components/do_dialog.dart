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

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency, //背景透明
      child: Center(
          child: Container(
        color: Colors.green,
        width: 300,
        height: 200,
      )),
    );
  }
}
