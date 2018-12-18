import 'package:flutter/material.dart';
import 'utilz.dart';
import 'loginPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget startButton() {
    return Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: Center(
        child: InkWell(
          onTap: () => print("pressed"),
          child: Text("Start",
              style: TextStyle(fontSize: 24.0, color: Colors.white)),
        ),
      ),
    );
  }

  Widget assignButton() {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: Center(
        child: InkWell(
          onTap: () => print("Assign"),
          child: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        child: Center(
          child: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget mainBody(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: startButton(),
        ),
        Align(
          //Bottom|left
          alignment: Alignment(-1.0, 1.0),
          child: loginButton(context),
        ),
        Align(
          //Bottom|right
          alignment: Alignment(1.0, 1.0),
          child: assignButton(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilz.APP_BG,
      body: mainBody(context),
    );
  }
}
