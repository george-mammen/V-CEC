import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proddeccec/widget/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Container(
                                                    child: Text(
                                                  '${myEvent['date_1']}',
                                                  style: TextStyle(
                                                    fontFamily: 'Ubuntu',
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black54,
                                                    fontSize: 24.0,
                                                  ),
                                                )),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Container(
                                                    child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Container(
                                                        child: Text(
                                                      '${myEvent['title_1']}',
                                                      style: TextStyle(
                                                        fontFamily: 'Ubuntu',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black,
                                                        fontSize: 22.0,
                                                      ),
                                                    )),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                        child: Text(
                                                      '${myEvent['details_1_a']}',
                                                      style: TextStyle(
                                                        fontFamily: 'Ubuntu',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black54,
                                                        fontSize: 18.0,
                                                      ),
                                                    )),
                                                    Container(
                                                        child: Text(
                                                      '${myEvent['details_1_b']}',
                                                      style: TextStyle(
                                                        fontFamily: 'Ubuntu',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black54,
                                                        fontSize: 18.0,
                                                      ),
                                                    )),
                                                  ],
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            SizeConfig.safeBlockHorizontal * 18,
                                      ),
                                      Container(
                                        width:
                                            SizeConfig.safeBlockHorizontal * 60,
                                        height:
                                            SizeConfig.safeBlockHorizontal * 55,
                                        child: ClipRRect(
                                          borderRadius:
                                              new BorderRadius.circular(24.0),
                                          child: Image.network(
                                            '${myEvent['image_1']}',
                                            fit: BoxFit.fill,
                                            alignment: Alignment.topRight,
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
