import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.add,
          color: Colors.black,
          size: screenSize.height * 0.05,
        ),
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
          Padding(
            padding: EdgeInsets.only(right: screenSize.width * 0.03),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: screenSize.height * 0.04,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(screenSize.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: screenSize.height * 0.114,
                      height: screenSize.height * 0.114,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenSize.height * 0.114 / 2),
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
                      padding: EdgeInsets.fromLTRB(screenSize.width * 0.17, screenSize.height * 0.08, 0, 0),
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.blue[500],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(screenSize.width * 0.184, screenSize.height * 0.0857, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        size: screenSize.width * 0.035,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '27',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.047,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.037,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '176',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.047,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.037,
                      ),
                    ),
                  ],
                ),Column(
                  children: <Widget>[
                    Text(
                      '176',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.047,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.037,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(screenSize.width * 0.04, 0, screenSize.width * 0.04, screenSize.width * 0.04),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ankush Chavan',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Personal Blog',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.04,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Passionate Coder\n'
                          'Artist 🎨\n'
                          'Fitness Enthusiast',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.04,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
            child: Container(
              width: screenSize.width * 0.95,
              height: screenSize.height * 0.04,
              child: OutlineButton(
                color: Colors.white,
                highlightColor: Colors.white,
                highlightedBorderColor: Colors.grey,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(screenSize.width * 0.01),
                ),
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenSize.width * 0.04,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: OutlineButton(
                    color: Colors.white,
                    highlightColor: Colors.white,
                    highlightedBorderColor: Colors.grey,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(screenSize.width * 0.01),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Promotions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.width * 0.04,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: OutlineButton(
                    color: Colors.white,
                    highlightColor: Colors.white,
                    highlightedBorderColor: Colors.grey,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(screenSize.width * 0.01),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Insights',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.width * 0.04,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: OutlineButton(
                    color: Colors.white,
                    highlightColor: Colors.white,
                    highlightedBorderColor: Colors.grey,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(screenSize.width * 0.01),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Email address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.width * 0.04,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(screenSize.width * 0.04, screenSize.width * 0.02, screenSize.width * 0.04, 0),
            child: Row(
              children: <Widget>[
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
                            color: Colors.grey,
                            width: 1,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://github.com/cankush625/Web/blob/master/assets/kanha.jpeg?raw=true',
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    Text(
                      'My Art  ',
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
                        child: Icon(
                          Icons.add,
                          size: screenSize.width * 0.1,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenSize.height * 0.09 / 2),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'New    ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.01,
          ),
          Container(
            height: 1,
            width: screenSize.width,
            color: Colors.grey[300],
          ),
          Row(
            children: <Widget>[
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.065,
                child: Icon(
                  Icons.grid_on,
                  size: screenSize.width * 0.07,
                ),
              ),
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.065,
                child: Icon(
                  Icons.person_outline,
                  size: screenSize.width * 0.08,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}