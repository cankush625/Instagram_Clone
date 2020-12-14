import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var fsconnect = FirebaseFirestore.instance;

  var profilePhoto = "";

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/logo/instagram_camera_icon.jpg',
              height: screenSize.height * 0.045,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenSize.height * 0.01, screenSize.height * 0.005, 0, 0),
              child: Image.asset(
                'assets/logo/instagram_appbar_icon.png',
                height: screenSize.height * 0.045,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: screenSize.width * 0.03),
              child: GestureDetector(
                child: FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.black,
                  size: 25,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'message');
                },
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenSize.width * 0.04, screenSize.height * 0.01, 0, 0),
                    child: Container(
//                padding: EdgeInsets.fromLTRB(screenSize.width * 0.04, screenSize.height * 0.02, 0, screenSize.height * 0.02),
                      height: screenSize.height * 0.12,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: screenSize.width * 0.04),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      width: screenSize.height * 0.09,
                                      height: screenSize.height * 0.09,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(screenSize.height * 0.09 / 2),
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 3,
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(screenSize.width * 0.11, screenSize.height * 0.06, 0, 0),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Colors.blue[500],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(screenSize.width * 0.124, screenSize.height * 0.0657, 0, 0),
                                      child: FaIcon(
                                        FontAwesomeIcons.plus,
                                        size: screenSize.width * 0.035,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Your story',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: screenSize.width * 0.035),
                                child: Container(
                                  width: screenSize.height * 0.09,
                                  height: screenSize.height * 0.09,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenSize.height * 0.09 / 2),
                                    border: Border.all(
                                      color: Colors.purple[500],
                                      width: 3,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random1.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Text(
                                'andrewsg54',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: screenSize.width * 0.035),
                                child: Container(
                                  width: screenSize.height * 0.09,
                                  height: screenSize.height * 0.09,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenSize.height * 0.09 / 2),
                                    border: Border.all(
                                      color: Colors.purple[500],
                                      width: 3,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random3.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Text(
                                'itsjames12',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: screenSize.width * 0.035),
                                child: Container(
                                  width: screenSize.height * 0.09,
                                  height: screenSize.height * 0.09,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenSize.height * 0.09 / 2),
                                    border: Border.all(
                                      color: Colors.purple[500],
                                      width: 3,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random5.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Text(
                                'realerica__',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: screenSize.width * 0.035),
                                child: Container(
                                  width: screenSize.height * 0.09,
                                  height: screenSize.height * 0.09,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenSize.height * 0.09 / 2),
                                    border: Border.all(
                                      color: Colors.purple[500],
                                      width: 3,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random4.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Text(
                                'official_lauren',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: screenSize.width * 0.035),
                                child: Container(
                                  width: screenSize.height * 0.09,
                                  height: screenSize.height * 0.09,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenSize.height * 0.09 / 2),
                                    border: Border.all(
                                      color: Colors.purple[500],
                                      width: 3,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://github.com/cankush625/WhatsApp_Clone/raw/master/assets/images/profilePhotos/random6.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Text(
                                'james2552',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: screenSize.width,
                    color: Colors.grey[300],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: StreamBuilder<QuerySnapshot>(
                          stream: fsconnect.collection('user').snapshots(),
                          builder: (context, snapshot) {
                            var msg = snapshot.data.docs;
                            List<Widget> feedPosts = [];
                            for (var d in msg) {
                              var username = d.data()['username'].toString();
                              profilePhoto = d.data()['imageUrl'].toString();
                              var postUrl = d.data()['postUrl'].toString();
                              var likes = d.data()['likes'].toString();
                              var comments = d.data()['comments'].toString();
                              var caption = d.data()['caption'].toString();
                              var postDate = d.data()['postDate'].toString();
                              var postCard = Column(
                                children: <Widget> [
                                  ListTile(
                                    leading: Container(
                                      width: screenSize.height * 0.05,
                                      height: screenSize.height * 0.05,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(screenSize.height * 0.05 / 2),
                                        border: Border.all(
                                          color: Colors.purple[500],
                                          width: 2,
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            profilePhoto,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.orange,
                                      ),
                                    ),
                                    title: Text(
                                      username,
                                      style: TextStyle(
                                        fontSize: screenSize.width * 0.045,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Icon(
                                      Icons.more_vert,
                                      size: screenSize.width * 0.065,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    width: screenSize.width,
                                    color: Colors.red,
                                    child: Image(
                                      image: NetworkImage(
                                        postUrl,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(screenSize.width * 0.035, screenSize.width * 0.025, screenSize.width * 0.035, screenSize.width * 0.025),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  FaIcon(
                                                    FontAwesomeIcons.heart,
                                                    size: screenSize.width * 0.06,
                                                  ),
                                                  SizedBox(
                                                    width: screenSize.width * 0.025,
                                                  ),
                                                  Container(
                                                    height: screenSize.width * 0.06,
                                                    child: Image.asset(
                                                      'assets/logo/instagram_comment_icon.png',
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: screenSize.width * 0.025,
                                                  ),
                                                  Container(
                                                    height: screenSize.width * 0.06,
                                                    child: Image.asset(
                                                      'assets/logo/instagram_share_icon.png',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.bookmark,
                                                size: screenSize.width * 0.06,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.008,
                                          ),
                                          Text(
                                            '${likes} likes',
                                            style: TextStyle(
                                              fontSize: screenSize.height * 0.023,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          RichText(
                                            text: new TextSpan(
                                              style: new TextStyle(
                                                fontSize: screenSize.height * 0.023,
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                new TextSpan(text: '${username} ', style: new TextStyle(fontWeight: FontWeight.bold)),
                                                new TextSpan(text: caption),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.008,
                                          ),
                                          Text(
                                            'View all ${comments} comments',
                                            style: TextStyle(
                                              fontSize: screenSize.height * 0.023,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.008,
                                          ),
                                          Text(
                                            postDate,
                                            style: TextStyle(
                                              fontSize: screenSize.height * 0.018,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                              feedPosts.add(postCard);
                            }
                            return Container(
                              child: Column(
                                children: feedPosts,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: screenSize.height * 0.065,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[300],
              width: screenSize.width * 0.003,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.home,
                  size: screenSize.width * 0.07,
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
              Icon(
                Icons.search,
                size: screenSize.width * 0.07,
              ),
              FaIcon(
                FontAwesomeIcons.plusSquare,
                size: screenSize.width * 0.06,
              ),
              FaIcon(
                FontAwesomeIcons.heart,
                size: screenSize.width * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  fsconnect.collection('userProfile').doc("oQ5FBdRIQU2xqZwaXHmR").get().then((value) {
                    var userInfo = value.data();
                    Navigator.pop(context);
                    Navigator.pushNamed(context, 'profile', arguments: {
                      'userInfo': userInfo,
                    });
                  });
                },
                child: Container(
                  width: screenSize.height * 0.035,
                  height: screenSize.height * 0.035,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenSize.height * 0.07 / 2),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}