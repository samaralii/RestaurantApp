import 'package:flutter/material.dart';
import 'utilz.dart';

class MenuPage extends StatefulWidget {
  createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  Widget menuList() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext ctx, int index) {
          return listItem();
        });
  }

  Widget listItem() {
    return Center(
        child: Row(
      children: <Widget>[
        InkWell(
            onTap: () {
              print("Item Pressed");
            },
            child: Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  "Data",
                  style: TextStyle(
                      fontFamily: 'vinerhand',
                      fontSize: 20.0,
                      color: Utilz.TEXT_COLOR),
                ))),
        Text("|",
            style: TextStyle(
                fontSize: 35.0,
                color: Utilz.TEXT_COLOR,
                fontWeight: FontWeight.bold))
      ],
    ));
  }

  Widget topView() {
    return Container(
        height: 30.0,
        margin: EdgeInsets.only(top: 35.0),
        child: Container(
          child: Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Image.asset('images/arrow.png')),
              Expanded(
                child: menuList(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Image.asset('images/arrow_right.png')),
            ],
          ),
        ));
  }

  Widget subMenuListItems() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 30,
      itemBuilder: (BuildContext ctx, int index) {
        return subMenuItem();
      },
    );
  }

  Widget subMenuItem() {
    return Container(
      margin: EdgeInsets.all(2.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 220.0,
            margin: EdgeInsets.only(right: 5.0),
            color: Colors.black,
            child: Image.asset(
              'images/sample.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Container(
              height: 200.0,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Title", style: TextStyle(fontSize: 25.0, fontFamily: 'Baskerville'))),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam volutpat risus purus, eu vehicula nisi blandit vitae. Nunc turpis nibh, posuere id augue ac, scelerisque laoreet lectus.", 
                      style: TextStyle(fontFamily: 'gautami', fontSize: 15.0))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget body() {
    return Container(
      child: Column(
        children: <Widget>[
          topView(),
          Text(
            "Title",
            style: TextStyle(
                color: Utilz.TEXT_COLOR,
                fontFamily: 'vinerhand',
                fontSize: 40.0),
          ),
          Expanded(
            child: subMenuListItems(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilz.APP_BG,
      body: body(),
    );
  }
}
