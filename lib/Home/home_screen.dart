import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/logo/instagram_camera_icon.jpg',
              height: screenSize.height * 0.055,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenSize.height * 0.01, screenSize.height * 0.005, 0, 0),
              child: Image.asset(
                'assets/logo/instagram_appbar_icon.png',
                height: screenSize.height * 0.055,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: screenSize.width * 0.02),
              child: FaIcon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Text(
        "This is the start",
      ),
    );
  }
}