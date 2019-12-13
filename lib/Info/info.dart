import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'About Us',
          style: TextStyle(fontFamily: 'OpenSans'),
        ),
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage(
                  "assets/images/bootscreen.jpg",
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 35),
                  children: <TextSpan>[
                    TextSpan(
                        text: '\tMumbai',
                        style: TextStyle(
                            color: Colors.blue, fontFamily: 'OpenSans'))
                  ],
                ),
              ),
              Divider(
                endIndent: 50.0,
                indent: 50.0,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/Aditya_Sutar.jpeg'),
                  radius: 65.0,
                ),
              ),
              Text(
                'Aditya Sutar',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                    fontSize: 25.0),
              ),
              Text(
                'Organizer | Speaker | Flutter Developer',
                style: TextStyle(color: Colors.white70, fontSize: 18.0),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.envelope,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      var emailUrl = 'mailto:yash151099@gmail.com';
                      var out = Uri.encodeFull(emailUrl);
                      await _launchURL(out);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await _launchURL(
                          'https://www.facebook.com/aditya.sutar305');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await _launchURL('https://www.instagram.com/iadisutar/');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await _launchURL('https://twitter.com/iAdityaSutar');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () async {
                      await _launchURL('https://github.com/aditya305');
                    },
                  ),
                ],
              ),
              Divider(
                endIndent: 25.0,
                indent: 25.0,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/portfolio.jpg'),
                  radius: 65.0,
                ),
              ),
              Text(
                'Yash Adulkar',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                    fontSize: 25.0),
              ),
              Text(
                'Organizer | Speaker | Flutter Developer',
                style: TextStyle(color: Colors.white70, fontSize: 18.0),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.envelope,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      var emailUrl = 'mailto:yash151099@gmail.com';
                      var out = Uri.encodeFull(emailUrl);
                      await _launchURL(out);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await _launchURL('https://www.facebook.com/yash.adulkar');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await _launchURL(
                          'https://www.instagram.com/elaishane_1510_/');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      await _launchURL('https://twitter.com/imyashadulkar');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.mediumM,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () async {
                      await _launchURL('https://medium.com/@yashadulkar');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () async {
                      await _launchURL('https://github.com/elaishane');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
