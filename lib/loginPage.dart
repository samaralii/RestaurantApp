import 'package:flutter/material.dart';
import 'utilz.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget {
  createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  
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

  Widget loginBox() {
    return Text("Login Box");
  }

  Widget body(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          child: backButton(context),
          alignment: Alignment(-1.0, -1.0),
        ),
        Center(
          child: loginBox(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilz.APP_BG,
      body: body(context),
    );
  }
}
