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