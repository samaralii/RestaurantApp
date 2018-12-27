import 'package:flutter/material.dart';
import 'utilz.dart';


class SyncPage extends StatefulWidget {
  createState() => SyncPageState();
}

class SyncPageState extends State<SyncPage> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilz.APP_BG,
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
      return Stack(
        children: <Widget>[

          Center(
            child: syncButton(),
          ),

          Align(
            child: backButton(context),
            alignment: Alignment.topLeft,
          )


        ],
      );
  }


   Widget syncButton() {
    return Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: Center(
        child: InkWell(
          onTap: () => print("pressed"),
          child: Text("Sync",
              style: TextStyle(fontSize: 24.0, color: Colors.white)),
        ),
      ),
    );
  }


Widget backButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          height: 70.0,
          width: 150.0,
          margin: EdgeInsets.only(top: 30, left: 5.0),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text("Back",
                      style: TextStyle(fontSize: 24.0, color: Colors.white)))
            ],
          )),
    );
  }

}

