import 'package:flutter/material.dart';
import 'utilz.dart';
import 'login_page.dart';
import 'menu_page.dart';

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
  Widget startButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MenuPage()));
      },
      child: Container(
        width: 190.0,
        height: 190.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        child: Center(
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
          child: startButton(context),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: loginButton(context),
        ),
        Align(
          alignment: Alignment.bottomRight,
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
