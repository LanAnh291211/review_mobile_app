import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:review_mobile_app/item_cast.dart';
import 'package:review_mobile_app/item_popular.dart';

class DetailsScreen extends StatelessWidget {
  ItemPopularDemo? itemPopular;
  DetailsScreen({
    Key? key,
    this.itemPopular,
  }) : super(key: key);

  List<int> _numberList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0.w),
            child: const Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            itemPopular!.urlPhoto,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(height: MediaQuery.of(context).size.height, color: Colors.white.withOpacity(0.8)),
          _body(context),
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        SizedBox(
          height: 20.h,
        ),
        _header(),
        SizedBox(
          height: 20.h,
        ),
        _cast(),
        SizedBox(
          height: 20.h,
        ),
        _overview(),
        ListView.builder(
          itemCount: _numberList.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Text(_numberList[index].toString()),
        )
      ],
    );
  }

  _header() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(18),
            //     image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: AssetImage(
            //           itemPopular!.urlPhoto,
            //         )),
            //   ),
            // ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    itemPopular!.urlPhoto,
                    fit: BoxFit.cover,
                    width: 150.w,
                    height: 150.h,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemPopular!.name,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [const Expanded(flex: 1, child: const Text("Xuat ban")), Expanded(flex: 2, child: Text(itemPopular!.releaseDate))],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Expanded(flex: 1, child: Text("Thể loại")), Expanded(flex: 2, child: Text("Phim hoạt hình,Phim hoạt hình,Phim hoạt hind,Phim hoạt hình,"))],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _cast() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Cast",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 160.h,
          child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: listItemCast.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _itemCast(listItemCast[index]);
              }),
        )
      ]),
    );
  }

  _itemCast(ItemCast itemCast) {
    return Container(
      margin: EdgeInsets.only(right: 12.w), 
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            itemCast.urlPhoto,
            height: 100.h,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(itemCast.name,
            style: TextStyle(
              fontSize: 16.sp,
            )),
        SizedBox(),
        Text(itemCast.character,
            style: TextStyle(
              fontSize: 10.sp,
            ))
      ]),
    );
  }

  _overview() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Overview",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "tôi yêu em đến nay chừng có thể , ngọn lửa tình chưa hẳn đã,tôi yêu em đến nay chừng có thể , ngọn lửa tình chưa hẳn đã,tôi yêu em đến nay chừng có thể , ngọn lửa tình chưa hẳn đã,tôi yêu em đến nay chừng có thể , ngọn lửa tình chưa hẳn đã,tôi yêu em đến nay chừng có thể , ngọn lửa tình chưa hẳn đã",
          style: TextStyle(fontSize: 16.sp),
        )
      ]),
    );
  }
}
