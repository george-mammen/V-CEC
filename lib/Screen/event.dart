import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proddeccec/widget/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          //1st box

          Container(
            margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
            child: Container(
              child: new FittedBox(
                child: Material(
                  // color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.safeBlockHorizontal * 4),
                          child: myDetailsContainer1(),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 18,
                      ),
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 60,
                        height: SizeConfig.safeBlockHorizontal * 55,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                            fit: BoxFit.fill,
                            alignment: Alignment.topRight,
                            image: AssetImage("images/python.jpg"),
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
            margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
            child: Container(
              child: new FittedBox(
                child: Material(
                  // color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.safeBlockHorizontal * 4),
                          child: myDetailsContainer2(),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 18,
                      ),
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 60,
                        height: SizeConfig.safeBlockHorizontal * 55,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                            fit: BoxFit.fill,
                            alignment: Alignment.topRight,
                            image: AssetImage("images/applaunch.jpg"),
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
            margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
            child: Container(
              child: new FittedBox(
                child: Material(
                  // color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.safeBlockHorizontal * 4),
                          child: myDetailsContainer3(),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 18,
                      ),
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 60,
                        height: SizeConfig.safeBlockHorizontal * 55,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                            fit: BoxFit.fill,
                            alignment: Alignment.topRight,
                            image: AssetImage("images/discuss.jpg"),
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
            margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
            child: Container(
              child: new FittedBox(
                child: Material(
                  // color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.safeBlockHorizontal * 4),
                          child: myDetailsContainer4(),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 18,
                      ),
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 60,
                        height: SizeConfig.safeBlockHorizontal * 55,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                            fit: BoxFit.fill,
                            alignment: Alignment.topRight,
                            image: AssetImage("images/machine.jpg"),
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
            margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
            child: Container(
              child: new FittedBox(
                child: Material(
                  // color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.safeBlockHorizontal * 4),
                          child: myDetailsContainer5(),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 18,
                      ),
                      Container(
                        width: SizeConfig.safeBlockHorizontal * 60,
                        height: SizeConfig.safeBlockHorizontal * 55,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                            fit: BoxFit.fill,
                            alignment: Alignment.topRight,
                            image: AssetImage("images/project.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Box details

  //1st details

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "16 JUL - 2020",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "PYTHON",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text(
                "Python & OpenCV ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              Container(
                  child: Text(
                " Workshop",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
        ),
      ],
    );
  }

  //2nd details

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "20 JUL - 2020",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text(
                  "APP LAUNCH",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Text(
                  "Publishing Our New ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                )),
                Container(
                    child: Text(
                  " Application",
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
    );
  }

  //3rd details

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "22 JUL - 2020",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text(
                  "DISCUSS",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Text(
                  "Workshop For New ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                )),
                Container(
                    child: Text(
                  " Development",
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
    );
  }

  //4th details

  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "24 JUL - 2020",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "MACHINE",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text(
                "Workshop For Electronics & ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              Container(
                child: Text(
                  " Development",
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
    );
  }

  //5th details

  Widget myDetailsContainer5() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "29 JUL - 2020",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "BECOME NEW",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text(
                "Class About ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              Container(
                  child: Text(
                " Startup",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
        ),
      ],
    );
  }
}
