import 'package:flutter/material.dart';
import 'package:review_mobile_app/popular_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
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
      padding: EdgeInsets.only(top: 80, left: 25),
      child: TabBar(
        controller: _tabController,
        labelStyle: TextStyle(fontFamily: "Comfortaa", fontSize: 24, fontWeight: FontWeight.bold),
        tabs: [
          Text("Popular"),
          Text("NowPlaying"),
          Text("Up Coming"),
          Text("Top Rate"),
        ],
        indicatorColor: Colors.black,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
        labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
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
