import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ionicons/ionicons.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  var fsconnect = FirebaseFirestore.instance;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              'ankushchavan_',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
              size: screenSize.height * 0.027,
            ),
          ],
        ),
        actions: <Widget>[
          Icon(
            Icons.list,
            size: screenSize.width * 0.09,
          ),
          SizedBox(
            width: screenSize.width * 0.02,
          ),
          Image.asset(
            'assets/logo/instagram_message_icon.png',
            height: screenSize.height * 0.05,
            width: screenSize.height * 0.05,
          ),
          SizedBox(
            width: screenSize.width * 0.02,
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(screenSize.width * 0.025),
              width: screenSize.width * 0.95,
              height: screenSize.height * 0.054,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(screenSize.width * 0.03),
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    showCursor: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[700],
                      ),
                      hintText: 'Search',
                      focusColor: Colors.grey,
                      fillColor: Colors.grey,
                      hoverColor: Colors.grey,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: screenSize.width * 0.05,
                      color: Colors.grey[700],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenSize.width * 0.83, screenSize.height * 0.008, 0, 0),
                    child: Image.asset(
                      'assets/logo/instagram_equalizer_icon.png',
                      width: screenSize.width * 0.075,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    'Primary',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.04,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                MaterialButton(
                  child: Text(
                    'General',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.04,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 2,
              width: screenSize.width,
              color: Colors.grey[300],
            ),
            Container(
              child: Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://avatars1.githubusercontent.com/u/41515472?s=400&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Ankush Chavan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Active 1h ago',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random.png',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Mark',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Active 12m ago',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random1.png',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Andrew',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Shared a post . 6 d',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random2.png',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Bob Smith',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Sent a story . 3 w',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random3.png',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'James',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Reacted to your story 🎉 . 6 w',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random5.png',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Erica',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        '👍 . 8 w',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random4.png',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Lauren',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        '🤟🤟 . 10 w',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random6.png',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Jeff',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Active 3h ago',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://avatars1.githubusercontent.com/u/41515472?s=400&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                        ),
                        radius: 28,
                      ),
                      title: Text(
                        'Robert',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Active 1h ago',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/logo/instagram_camera_icon.jpg',
                        height: screenSize.height * 0.04,
                      ),
                      onTap: () {
                        print('Pressed the chat');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: screenSize.height * 0.065,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.photo_camera,
              color: Colors.blue,
              size: screenSize.width * 0.07,
            ),
            SizedBox(
              width: screenSize.width * 0.02,
            ),
            Text(
              'Camera',
              style: TextStyle(
                fontSize: screenSize.width * 0.045,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}