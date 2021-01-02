import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:camera/camera.dart';

import 'package:instagram_clone/Home/splash_screen.dart';
import 'package:instagram_clone/Home/home_screen.dart';
import 'package:instagram_clone/Message/message_screen.dart';
import 'package:instagram_clone/ObjectDetection/object_detection.dart';
import 'package:instagram_clone/Profile/profile_screen.dart';

List<CameraDescription> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => SplashScreen1(),
        "home": (context) => Home(),
        "profile": (context) => Profile(),
        "message": (context) => Message(),
        "object_detection": (context) => ObjectDetection(cameras),
      },
    );
  }
}