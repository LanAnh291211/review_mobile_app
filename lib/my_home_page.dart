import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_mobile_app/api_services.dart';
import 'package:review_mobile_app/my_home_page_controller.dart';
import 'package:review_mobile_app/popular_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final MyHomePageController _myHomePageController = Get.put(MyHomePageController());
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // print(Get.width);
    // print(Geteight);

    return Scaffold(
      body: Column(
        children: [_tabBar(), _tabBarView()],
      ),
    );
  }

  _tabBar() {
    return Padding(
      padding: EdgeInsets.only(top: 80.h, left: 25.w),
      child: TabBar(
        controller: _tabController,
        labelStyle: GoogleFonts.comfortaa(fontWeight: FontWeight.bold, fontSize: 24.sp),
        tabs: [
          Text("Popular"),
          Text("NowPlaying"),
          Text("Up Coming"),
          Text("Top Rate"),
        ],
        indicatorColor: Colors.black,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 10.h),
        labelPadding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 2.h),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black.withOpacity(0.5),
        isScrollable: true,
      ),
    );
  }

  _tabBarView() {
    return Expanded(
        child: TabBarView(controller: _tabController, children: [
      PopularView(),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.red,
      ),
    ]));
  }
}
