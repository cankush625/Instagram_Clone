import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var fsconnect = FirebaseFirestore.instance;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.add,
          color: Colors.black,
          size: screenSize.height * 0.05,
        ),
        title: Row(
          children: <Widget>[
            Text(
              data['userInfo']['username'],
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                              data['userInfo']['profilePictureUrl'],
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
                        data['userInfo']['posts'],
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
                        data['userInfo']['followers'],
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
                        data['userInfo']['following'],
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
                        data['userInfo']['name'],
                        style: TextStyle(
                          fontSize: screenSize.width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data['userInfo']['acType'],
                        style: TextStyle(
                          fontSize: screenSize.width * 0.04,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        // todo: Bio is not rendering correctly from FireStore
                        'Passionate Coder\nArtist 🎨\nFitness Enthusiast',
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
            Container(
              height: screenSize.height,
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.only(top: screenSize.width * 0.007),
                crossAxisCount: 3,
                crossAxisSpacing: screenSize.width * 0.007,
                mainAxisSpacing: screenSize.width * 0.007,
                children: <Widget>[
                  Container(
                    width: screenSize.width * 0.33,
                    height: screenSize.width * 0.33,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://github.com/cankush625/Web/blob/master/assets/kanha.jpeg?raw=true',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.33,
                    height: screenSize.width * 0.33,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://github.com/cankush625/Web/blob/master/assets/shree_ram.jpeg?raw=true',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.33,
                    height: screenSize.width * 0.33,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://avatars1.githubusercontent.com/u/41515472?s=460&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.33,
                    height: screenSize.width * 0.33,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://github.com/cankush625/Web/blob/master/assets/maharana_pratap_singh.jpeg?raw=true',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
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
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
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
                        data['userInfo']['profilePictureUrl'],
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