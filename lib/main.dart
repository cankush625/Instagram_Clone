import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:instagram_clone/Home/home_screen.dart';
import 'package:instagram_clone/Message/message_screen.dart';
import 'package:instagram_clone/Profile/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => Home(),
        "profile": (context) => Profile(),
        "message": (context) => Message(),
      },
    );
  }
}