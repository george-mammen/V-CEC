import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/Forum.dart';
//import 'package:proddeccec/Screen/proddec.dart';
import 'package:proddeccec/Screen/notification/notification.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:proddeccec/Screen/forum/addEvent/cecify/cecify.dart';

final FirebaseFirestore _db = FirebaseFirestore.instance;
final FirebaseMessaging _fcm = FirebaseMessaging();

//FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  _saveDeviceToken() async {
    // Get the token for this device
    String fcmToken = await _fcm.getToken();

    // Save it to Firestore
    if (fcmToken != null) {
      var tokens = _db.collection('users').doc(fcmToken);

      await tokens.set({
        'token': fcmToken,
       
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('Firstpage').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: new Text('Welcome'));
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot first = snapshot.data.docs[index];
                      _launchURL1() async {
                        final url = first.data()['link1'];
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      }

                      _launchURL2() async {
                        final url = first.data()['link2'];
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      }

                      _launchURL3() async {
                        final url = first.data()['link3'];
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      }

                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white,
                        child: ListView(
                          shrinkWrap: true,
                         // physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            GestureDetector(
                              onTap: _launchURL1,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .57,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/background.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .05,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            Container(
                              margin: EdgeInsets.all(
                                  MediaQuery.of(context).size.height * .007),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .35,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .045,
                                      child: FlatButton(
                                          highlightColor: Colors.blue[300],
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                  color: Colors.black,
                                                  width: 1.0)),
                                          splashColor: Colors.black,
                                          onPressed: () {
                                            _saveDeviceToken();

                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Notify()),
                                            );
                                          },
                                          child: Text(
                                            "   Notice   ",
                                            style: TextStyle(
                                              fontFamily: 'Ubuntu',
                                              fontWeight: FontWeight.w400,
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  6,
                                            ),
                                          )),
                                    ),
                                    FlatButton(
                                        highlightColor: Colors.blue[300],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Colors.black,
                                                width: 1.0)),
                                        splashColor: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Forum(),
                                              ));
                                        },
                                        child: Text(
                                          "   Forums   ",
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w400,
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    6,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                .00),
                                    width:
                                        MediaQuery.of(context).size.width * .35,
                                    height: MediaQuery.of(context).size.height *
                                        .045,
                                    child: FlatButton(
                                      onPressed: _launchURL3,
                                      highlightColor: Colors.blue[300],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color: Colors.black, width: 1.0)),
                                      splashColor: Colors.black,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .04,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .02),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage("images/moodle.png"),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        .369,
                                    height: MediaQuery.of(context).size.width *
                                        .095,
                                    child: FlatButton(
                                      highlightColor: Colors.blue[300],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color: Colors.black, width: 1.0)),
                                      splashColor: Colors.black,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => EventC(),
                                            ));
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .17,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage("images/cecify.png"),
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .055,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: _launchURL2,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'With ',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .02),
                                      ),
                                      WidgetSpan(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.0),
                                          child: Icon(
                                            EvaIcons.heart,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' PRODDEC',
                                        style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontWeight: FontWeight.w400,
                                            color: Colors.amber[700],
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .02),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              }
            }));
  }
}
