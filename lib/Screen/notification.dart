import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proddeccec/widget/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
           // fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('Notification').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: new Text('No Notification'));
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot myNotify = snapshot.data.documents[index];
                    _launchURL1() async {
                      final url = '${myNotify['button1']}';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }

                    _launchURL2() async {
                      final url = '${myNotify['button2']}';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }

                    return ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      // scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              //     margin: EdgeInsets.all(
                              //       SizeConfig.safeBlockHorizontal * 4),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * .43,
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          .02,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                      left: MediaQuery.of(context).size.width *
                                          .03,
                                      right: MediaQuery.of(context).size.width *
                                          .03),
                                  child: Material(
                                    color: Colors.white,
                                    elevation: 10.0,
                                    // borderRadius: BorderRadius.circular(24.0),
                                    shadowColor: Colors.lightBlue,
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              width: SizeConfig
                                                      .safeBlockHorizontal *
                                                  SizeConfig.screenWidth,
                                              height:
                                                  SizeConfig.safeBlockVertical *
                                                      18,
                                              child:
                                                  //Image.asset(
                                                  // "images/i1.jpg",
                                                  // fit: BoxFit.fill
                                                  //),
                                                  Image.network(
                                                '${myNotify['image']}',
                                                fit: BoxFit.contain,
                                                //        alignment: Alignment.topRight,
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .05,
                                            ),
                                            Text(
                                              '${myNotify['title']}',
                                              // 'hello',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Lekton',
                                                fontWeight: FontWeight.w700,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .03,
                                                // fontWeight: FontWeight.bold,
                                                //     fontFamily: 'BigNoodle',
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .05,
                                            ),
                                            ListView(
                                                shrinkWrap: true,
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                // scrollDirection: Ax,
                                                children: <Widget>[
                                                  Text(
                                                    '${myNotify['subtitle']}',
                                                    style: TextStyle(
                                                      fontFamily: 'Lekton',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.blueGrey,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .017,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .05,
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: <Widget>[
                                                        SizedBox(
                                                          //   width: MediaQuery.of(context).size.width ,

                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .03,

                                                          child: FlatButton(
                                                              textColor:
                                                                  Colors.blue,
                                                              highlightColor:
                                                                  Colors.white,
                                                              // textColor: ,
                                                              onPressed:
                                                                  _launchURL1,
                                                              child: Text(
                                                                '${myNotify['link1']}',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .blue,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .025,
                                                                ),
                                                              )),
                                                        ),
                                                        SizedBox(
                                                          //   width: MediaQuery.of(context).size.width ,

                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .03,

                                                          child: FlatButton(
                                                              textColor:
                                                                  Colors.blue,
                                                              highlightColor:
                                                                  Colors.white,
                                                              // textColor: ,
                                                              onPressed:
                                                                  _launchURL2,
                                                              child: Text(
                                                                '${myNotify['link2']}',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .blue,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .025,
                                                                ),
                                                              )),
                                                        ),
                                                      ]),
                                                ])
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  });
            }
          }),
    );
  }
}
