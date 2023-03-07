import 'package:flutter/material.dart';
import 'package:doflutter/global/do_colors.dart';

class PageHeader extends StatelessWidget {
  final Function()? onTapScan;
  final Function()? onTapSearch;
  final Function()? onTapMessage;
  const PageHeader({
    super.key,
    required this.onTapScan,
    required this.onTapSearch,
    required this.onTapMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onTapScan, icon: Icon(Icons.qr_code_scanner)),
        // Image.asset(
        //   "assets/images/icons/camera_black.png",
        //   height: 30,
        //   color: Colors.black54,
        // ),
        Expanded(child: _searchContainer()),
        IconButton(
            onPressed: onTapMessage,
            icon: Image.asset(
              "assets/images/icons/msg.png",
              height: 30,
            )),
        // Image.asset(
        //   "assets/images/icons/msg.png",
        //   height: 30,
        // )
      ],
    );
  }

  Widget _searchContainer() {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: DoColors.page,
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: onTapSearch,
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 6, right: 2),
              child: Icon(
                Icons.search,
                size: 18,
                color: DoColors.un3active,
              ),
            ),
            Text(
              "搜索关键词",
              style: TextStyle(fontSize: 12, color: DoColors.un3active),
            ),
          ],
        ),
      ),
    );
  }
}
