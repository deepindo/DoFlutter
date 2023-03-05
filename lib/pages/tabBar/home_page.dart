import 'package:doflutter/widget/page_header.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _bannerList = [
    "https://www.itying.com/images/flutter/1.png",
    "https://www.itying.com/images/flutter/2.png",
    "https://www.itying.com/images/flutter/3.png",
    "https://www.itying.com/images/flutter/4.png",
    "https://www.itying.com/images/flutter/5.png"
  ];

  final List<BannerModel> _listBanners = [
    BannerModel(
        imagePath: "https://www.itying.com/images/flutter/1.png", id: "1"),
    BannerModel(
        imagePath: "https://www.itying.com/images/flutter/2.png", id: "2"),
    BannerModel(
        imagePath: "https://www.itying.com/images/flutter/3.png", id: "3"),
    BannerModel(
        imagePath: "https://www.itying.com/images/flutter/4.png", id: "4"),
    BannerModel(
        imagePath: "https://www.itying.com/images/flutter/5.png", id: "5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: PageHeader(
          onTapSearch: () {
            // print("search");
          },
          onTapMessage: () {
            // print("message");
            Get.toNamed("web", arguments: {"title": "Flutter实战二", "aid": 12});
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 200,
            child: _flutterSwiper(),
          ),
          const SizedBox(
            height: 20,
          ),
          _menuGridView(),
        ],
      ),
    );
  }

  //不能滚动
  Widget _bannerCarousel() {
    return BannerCarousel(
      banners: _listBanners,
      customizedIndicators: const IndicatorModel.animation(
          width: 20, height: 5, spaceBetween: 5, widthAnimation: 50),
      height: 200,
      activeColor: Colors.amberAccent,
      disableColor: Colors.white,
      animation: true,
      // borderRadius: 10,
      width: double.infinity,
      indicatorBottom: false,
    );
  }

  Widget _flutterSwiper() {
    return Swiper(
      itemCount: _bannerList.length,
      index: 0,
      autoplay: true,
      autoplayDelay: 6000,
      // containerWidth: double.infinity,
      // containerHeight: 200,
      pagination: const SwiperPagination(
        alignment: Alignment.bottomCenter,
        builder: SwiperPagination.dots,
        // builder: (BuildContext context, SwiperPluginConfig config) {},
      ),
      control: const SwiperControl(size: 15),
      itemBuilder: (context, index) {
        return Image.network(
          _bannerList[index],
          fit: BoxFit.cover,
        );
      },
      onTap: (index) {},
      onIndexChanged: (value) {},
    );
  }

  Widget _menuGridView() {
    return GridView.count(
      crossAxisCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // childAspectRatio: 1.3,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed("/form");
          },
          child: Column(
            children: const [
              Icon(
                Icons.feedback,
                color: Colors.blue,
              ),
              SizedBox(
                height: 5,
              ),
              Text("表单"),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed("/video");
          },
          child: Column(
            children: const [
              Icon(
                Icons.video_camera_front,
                color: Colors.red,
              ),
              SizedBox(
                height: 5,
              ),
              Text("视频"),
            ],
          ),
        ),
        Column(
          children: const [
            Icon(Icons.format_align_center),
            SizedBox(
              height: 5,
            ),
            Text("x"),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.format_align_center),
            SizedBox(
              height: 5,
            ),
            Text("y"),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.format_align_center),
            SizedBox(
              height: 5,
            ),
            Text("z"),
          ],
        ),
      ],
    );
  }
}
