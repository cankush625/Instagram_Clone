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
              child: FaIcon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
                size: 25,
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
                  Column(
                    children: <Widget>[
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
                                'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                              ),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.orange,
                          ),
                        ),
                        title: Text(
                          'ankushchavan__',
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
                            'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
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
                                '221 likes',
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
                                    new TextSpan(text: 'ankushchavan__ ', style: new TextStyle(fontWeight: FontWeight.bold)),
                                    new TextSpan(text: 'At Grand Hyatt, Santacruize, Mumbai'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenSize.height * 0.008,
                              ),
                              Text(
                                'View all 12 comments',
                                style: TextStyle(
                                  fontSize: screenSize.height * 0.023,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: screenSize.height * 0.008,
                              ),
                              Text(
                                '10 December 2019',
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
              width: screenSize.width * 0.006,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.home,
                size: screenSize.width * 0.07,
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
              Icon(
                Icons.account_circle,
                size: screenSize.width * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}