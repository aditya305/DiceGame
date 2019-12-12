import 'dart:async';
import 'package:flutter/material.dart';

class BootScreen extends StatefulWidget {
  @override
  _BootScreenState createState() => _BootScreenState();
}

class _BootScreenState extends State<BootScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/mainpage');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/bootscreen.jpg",
              scale: 1.60,
            ),
          ),
          Positioned(
              bottom: 70,
              child: Text(
                'Flutter Mumbai',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                    fontSize: 30,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
