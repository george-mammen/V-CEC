import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class Event1 extends StatefulWidget {
  @override
  _Event1State createState() => _Event1State();
}

class _Event1State extends State<Event1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
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
          stream: Firestore.instance.collection('Event').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: new Text('No Event'));
            } else if (snapshot.hasError) {
              const Text('No data avaible right now');
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot myEvent = snapshot.data.documents[index];

                    return ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.vertical,
                        children: <Widget>[
                          //1st box

                          Container(
                            margin: EdgeInsets.all(
                                SizeConfig.safeBlockHorizontal * 4),
                            child: Container(
                              child: new FittedBox(
                                child: Material(
                                  // color: Colors.white,
                                  elevation: 14.0,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shadowColor: Color(0x802196F3),
                                  child: Row(
                                   // mainAxisAlignment:
                                     //   MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: SizeConfig
                                                      .safeBlockHorizontal *
                                                  4),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .01,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .02,
                                                ),
                                                child: Container(
                                                    child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Container(
                                                        child: Text(
                                                      myEvent.data()['title_1'],
                                                      style: TextStyle(
                                                        fontFamily: 'Ubuntu',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .04,
                                                      ),
                                                    )),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .02,
                                                    ),
                                                    Container(
                                                        child: Text(
                                                      myEvent.data()['details_1_a'],
                                                      style: TextStyle(
                                                        fontFamily: 'Lekton',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black54,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .025,
                                                      ),
                                                    )),
                                                    Container(
                                                        child: Text(
                                                      myEvent.data()['details_1_b'],
                                                      style: TextStyle(
                                                        fontFamily: 'Lekton',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black54,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .025,
                                                      ),
                                                    )),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .02,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Container(
                                                          child: Text(
                                                        myEvent.data()['date_1'],
                                                        style: TextStyle(
                                                          fontFamily: 'Ubuntu',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.blue,
                                                          fontSize: 24.0,
                                                        ),
                                                      )),
                                                    ),
                                                  ],
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      // width:
                                      //     SizeConfig.safeBlockHorizontal * 18,
                                      //),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding:
                                               EdgeInsets.only(left: 70.0),
                                          child: Container(
                                            width:
                                                SizeConfig.safeBlockHorizontal *
                                                    60,
                                            height:
                                                SizeConfig.safeBlockHorizontal *
                                                    55,
                                            child: ClipRRect(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      24.0),
                                              child: Image.network(
                                                myEvent.data()['image_1'],
                                                fit: BoxFit.fill,
                                                alignment: Alignment.topRight,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //2nd box
                        ]);
                  });
            }
          }),
    );
  }
}

//Box details

//1st details

//2nd details

//3rd details

//4th details

//5th details
