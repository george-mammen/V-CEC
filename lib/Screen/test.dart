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
          'Event',
          style: TextStyle(
            fontWeight: FontWeight.bold,
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
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
             const Text('No Event');
            } 
            else if(snapshot.hasError){ const Text('No data avaible right now'); } 
            else {
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot myEvent = snapshot.data.documents[index];

                     
                    return ListView(
                     scrollDirection: Axis.vertical,
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
                                            left:
                                                SizeConfig.safeBlockHorizontal *
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
                                                    color: Colors.black54,
                                                    fontSize: 24.0,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                        color: Colors.black,
                                                        fontSize: 22.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                      child: Text(
                                                    '${myEvent['details_1_a']}',
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 18.0,
                                                    ),
                                                  )),
                                                  Container(
                                                      child: Text(
                                                    '${myEvent['details_1_b']}',
                                                    style: TextStyle(
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
                                            left:
                                                SizeConfig.safeBlockHorizontal *
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
                                                '${myEvent['date_2']}',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 24.0,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                      '${myEvent['title_2']}',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                        child: Text(
                                                      '${myEvent['details_2_a']}',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18.0,
                                                      ),
                                                    )),
                                                    Container(
                                                        child: Text(
                                                      '${myEvent['details_2_b']}',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18.0,
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                              ),
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
                                        child:  Image.network(
                                          '${myEvent['image_2']}',
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

                        //3rd box

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
                                            left:
                                                SizeConfig.safeBlockHorizontal *
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
                                                '${myEvent['date_3']}',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 24.0,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                      '${myEvent['title_3']}',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                        child: Text(
                                                      '${myEvent['details_3_a']}',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18.0,
                                                      ),
                                                    )),
                                                    Container(
                                                        child: Text(
                                                     '${myEvent['details_3_b']}',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18.0,
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                              ),
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
                                          '${myEvent['image_3']}',
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

                        //4th box

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
                                            left:
                                                SizeConfig.safeBlockHorizontal *
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
                                                '${myEvent['date_4']}',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 24.0,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    '${myEvent['title_4']}',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 22.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                      child: Text(
                                                    '${myEvent['details_4_a']}',
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 18.0,
                                                    ),
                                                  )),
                                                  Container(
                                                    child: Text(
                                                      '${myEvent['details_4_b']}',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
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
                                          '${myEvent['image_4']}',
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
                        //5th box

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
                                            left:
                                                SizeConfig.safeBlockHorizontal *
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
                                                '${myEvent['date_5']}',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 24.0,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                   '${myEvent['title_5']}',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 22.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                      child: Text(
                                                    '${myEvent['details_5_a']}',
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 18.0,
                                                    ),
                                                  )),
                                                  Container(
                                                      child: Text(
                                                    '${myEvent['details_5_b']}',
                                                    style: TextStyle(
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
                                          '${myEvent['image_5']}',
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
                    
                    

                      ]
                    );  
                    
                  }
              ); 
            }
          }
          ),
    );
  }
}

//Box details

//1st details

//2nd details

//3rd details

//4th details

//5th details
