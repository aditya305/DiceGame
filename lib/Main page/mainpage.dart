import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class dice extends StatelessWidget {
  const dice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // SizedBox(height: 90.0),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 37),
                    children: <TextSpan>[
                      TextSpan(
                          text: '\t Mumbai',
                          style: TextStyle(
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Flexible(
              child: SvgPicture.asset('assets/svgicon/flutterinteract.svg',)),
          SizedBox(
            height: 27.0,
          ),
          Text(
            'Viewing Party 2019',
            style: TextStyle(
                color: Colors.white, fontFamily: 'OpenSans', fontSize: 32),
          ),
          SizedBox(
            height: 25,
          ),
          Flexible(child: RollDice()),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottomOpacity: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.infoCircle),
            onPressed: () {
              Navigator.of(context).pushNamed('/info');
            },
            //iconSize: 40,
          ),
        ],
      ),
    );
  }
}

class RollDice extends StatefulWidget {
  @override
  _RollDiceState createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int diceNumber = 1;
  void RandomdiceNumber() {
    diceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Image.asset('assets/diceimages/dice$diceNumber.png'),
      onPressed: () {
        setState(() {
          RandomdiceNumber();
          print(diceNumber);
        });
      },
    );
  }
}
