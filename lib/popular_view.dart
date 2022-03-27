import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:review_mobile_app/details_screen.dart';
import 'package:review_mobile_app/item_popular.dart';

class PopularView extends StatefulWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  State<PopularView> createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.62, crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 30),
      itemCount: listItemPopularDemo.length,
      itemBuilder: (BuildContext context, int index) {
        return _itemPopular(listItemPopularDemo[index]);
      },
    );
  }

  Widget _itemPopular(ItemPopularDemo itemPopular) {
    return GestureDetector(
      onTap: () => Get.to(DetailsScreen(itemPopular: itemPopular,)),
      child: Column(
        children: [
          Expanded(
              flex: 5,
              child: Stack(
                alignment: Alignment(0.7, 0.95),
                children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          itemPopular.urlPhoto,
                        )),
                  )),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(18),
                  //   child: Image.asset(
                  //     itemPopular.urlPhoto,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Text(itemPopular.releaseDate, style: TextStyle(color: Colors.white))
                ],
              )),
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Text(
                    itemPopular.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )))
        ],
      ),
    );
  }
}
