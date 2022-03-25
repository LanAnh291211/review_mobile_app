import 'package:flutter/material.dart';
import 'package:review_mobile_app/item_cast.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(height: MediaQuery.of(context).size.height, color: Colors.white.withOpacity(0.8)),
          _body(context)
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
        SizedBox(
          height: 20,
        ),
        _header(),
        SizedBox(
          height: 20,
        ),
        _cast(),
        SizedBox(
          height: 20,
        ),
        _overview()
      ],
    );
  }

  _header() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }

  _cast() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(""),
        SizedBox(),
        Container(
          height: 160,
          child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
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
      margin: EdgeInsets.only(right: 12),
      child: Column(children: [
        // Expanded(child: ,),
        SizedBox(),
        Text("data"),
        SizedBox(),
        Text("data")
      ]),
    );
  }

  _overview() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Overview",
          style: TextStyle(
            fontSize: 18,
            fontWeight:FontWeight.bold ,
          ) ,),
          SizedBox(
            height: 15,
          ),
          Text("",
          style: TextStyle(fontSize: 16),)
          
        ]),
    );
  }
}
