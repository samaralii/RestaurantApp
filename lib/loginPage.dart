import 'package:flutter/material.dart';
import 'utilz.dart';
import 'syncPage.dart';

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

  Widget emailField() {
    return Container(
      height: 80.0,
      color: Colors.white,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Username",
            prefixIcon: Icon(
              Icons.account_box,
              color: Colors.black,
              size: 30.0,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(fontSize: 24.0, color: Colors.black),
        ),
      ),
    );
  }

  Widget passwordField() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      height: 80.0,
      color: Colors.white,
      child: Center(
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(
              Icons.security,
              color: Colors.black,
              size: 30.0,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(fontSize: 24.0, color: Colors.black),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: ButtonTheme(
        minWidth: 200.0,
        height: 70.0,
        child: RaisedButton(
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context) => SyncPage()));

          },
          color: Colors.red,
          padding: EdgeInsets.all(10.0),
          child: Text("Login",
              style: TextStyle(fontSize: 20.0, color: Colors.white)),
        ),
      ),
    );
  }

  Widget loginBox() {
    return Container(
      height: 300.0,
      margin: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: <Widget>[emailField(), passwordField(), loginButton()],
      ),
    );
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
