import 'package:flutter/material.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.62, crossAxisCount: 2, crossAxisSpacing: 16, mainAxisExtent: 30),
      itemCount: listItemPopular.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(color: Colors.red, child: _itemPopular(listItemPopular[index]));
      },
    );
  }

  Widget _itemPopular(ItemPopular itemPopular) {
    return GestureDetector(
      onTap: () {},
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
                            image: AssetImage(itemPopular.urlPhoto)),
                  )),
                  Text(itemPopular.releaseDate,
                      style: TextStyle(color: Colors.white))
                ],
              )),
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.only(top: 15),
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
