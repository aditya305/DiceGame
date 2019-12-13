import 'package:dice/Bootscreen/bootscreen.dart';
import 'package:flutter/material.dart';

import 'Info/info.dart';
import 'Main page/mainpage.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BootScreen(),
      routes: {
        '/bootscreen' : (context) => BootScreen(), 
        '/mainpage' : (context) => dice(),
        '/info' : (context) => Info(),
         },
    );
  }
}