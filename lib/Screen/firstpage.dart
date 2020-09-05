import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/Forum.dart';
//import 'package:proddeccec/Screen/proddec.dart';
import 'package:proddeccec/Screen/notification/notification.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('Firstpage').snapshots(),
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

                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white,
                        child: ListView(
                          children: <Widget>[
                            GestureDetector(
                              onTap: _launchURL1,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .76,
                                //  height: SizeConfig.safeBlockVertical * 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/background3.gif"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            Container(
                              margin: EdgeInsets.all(
                                  MediaQuery.of(context).size.height * .007),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                // child: Padding(
                                //    padding: EdgeInsets.only(
                                //      bottom: SizeConfig.safeBlockVertical * 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
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
                                                  builder: (context) =>
                                                      Notify()),
                                            );
                                          },
                                          child: Text(
                                            "   Notice   ",
                                            style: TextStyle(
                                              fontFamily: 'Ubuntu',
                                              fontWeight: FontWeight.w400,
                                              // color: Colors.black,
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  6,
                                              //  fontFamily: 'Arvo',
                                            ),
                                          )),
                                    
                                    FlatButton(
                                        highlightColor: Colors.amberAccent,
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
                                            // color: Colors.black,
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    6,
                                            //  fontFamily: 'Arvo',
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .06,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: _launchURL2,
                                child: RichText(
                                  text: TextSpan(
                                    //  style: Theme.of(context).textTheme.body1,
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
