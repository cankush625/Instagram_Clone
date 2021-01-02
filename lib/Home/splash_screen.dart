import 'package:flutter/material.dart';
import 'package:instagram_clone/Home/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => new _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return new SplashScreen(
        seconds: 5,
        image: new Image.asset(
          'assets/logo/instagram_logo.png',
          height: screenSize.height * 0.1,
          width: screenSize.height * 0.1,
        ),
        useLoader: false,
        backgroundColor: Colors.white,
        photoSize: 100.0,
        routeName: "/home",
      navigateAfterSeconds: Home(),
    );
  }
}