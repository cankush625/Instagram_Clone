import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/Home/status_bar.dart';

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
//        elevation: 0,
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
                                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Text(
                                'cankush625',
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
                                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
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
                                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
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
                                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
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
                                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.orange,
                                  ),
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
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: screenSize.width,
                    color: Colors.grey[300],
                  ),
                  Container(
                    width: screenSize.width,
                    color: Colors.red,
                    child: Image(
                      image: NetworkImage(
                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    color: Colors.red,
                    child: Image(
                      image: NetworkImage(
                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    color: Colors.red,
                    child: Image(
                      image: NetworkImage(
                        'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}