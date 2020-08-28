import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/addevent.dart';
import 'package:proddeccec/backend/size_config.dart';
import 'package:proddeccec/Screen/forum/proddec.dart';

// divider and list tile widget is needed to be used

class Forum extends StatefulWidget {
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forum',
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
      body: Column(
        children: <Widget>[
          Container(
            
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),

              // child: Padding(
              //    padding: EdgeInsets.only(
              //      bottom: SizeConfig.safeBlockVertical * 5),
              child: FlatButton(
                  highlightColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.transparent,
                        //width: 1.0
                      )),
                  splashColor: Colors.black,
                  onPressed: () {
                     Navigator.push(
                         context,
                     MaterialPageRoute(
                          builder: (context) =>
                             ProfilePage()
                    ),
                    );
                  },
                  child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                           padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .04),
                          child: Container(

                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .09,
                            // borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              image: AssetImage("images/logo.png"),
                              fit: BoxFit.fill,
                              // alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                        Padding(
                           padding:  EdgeInsets.only(left:MediaQuery.of(context).size. width*.09),
                          child: Text(
                            "P.R.O.D.E.C.C",
                            style: TextStyle(
                              fontFamily: 'Lekton',
                              fontWeight: FontWeight.w700,
                              // color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              //  fontFamily: 'Arvo',
                            ),
                          ),
                        ),
                      ]))),
          Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),

              // child: Padding(
              //    padding: EdgeInsets.only(
              //      bottom: SizeConfig.safeBlockVertical * 5),
              child: FlatButton(
                  highlightColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.transparent,
                        //width: 1.0
                      )),
                  splashColor: Colors.black,
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    // MaterialPageRoute(
                    //      builder: (context) =>
                    //         Notify()
                    //),
                    //);
                  },
                  child: Row(

                      children: [
                        Padding(
                           padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .04),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .09,
                            // borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              image: AssetImage("images/Nss.png"),
                              fit: BoxFit.fill,
                              // alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .09),
                          child: Text(
                            "National Service Scheme",
                            style: TextStyle(
                              fontFamily: 'Lekton',
                              fontWeight: FontWeight.w700,
                              // color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                              //  fontFamily: 'Arvo',
                            ),
                          ),
                        ),
                      ]))),
          Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),

              // child: Padding(
              //    padding: EdgeInsets.only(
              //      bottom: SizeConfig.safeBlockVertical * 5),
              child: FlatButton(
                  highlightColor: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.transparent,
                        //width: 1.0
                      )),
                  splashColor: Colors.black,
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    // MaterialPageRoute(
                    //      builder: (context) =>
                    //         Notify()
                    //),
                    //);
                  },
                  child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .04),
                          child: Container(
                            // padding: EdgeInsets.only(left: 8.0),
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .09,
                            // borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              image: AssetImage("images/Ieee.png"),
                              fit: BoxFit.fill,
                              // alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .09),
                          child: Text(
                            "IEEE",
                            style: TextStyle(
                              fontFamily: 'Lekton',
                              fontWeight: FontWeight.w700,
                              // color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              //  fontFamily: 'Arvo',
                            ),
                          ),
                        ),
                      ]))),

                      Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),

              // child: Padding(
              //    padding: EdgeInsets.only(
              //      bottom: SizeConfig.safeBlockVertical * 5),
              child: FlatButton(
                  highlightColor: Colors.grey[400],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.transparent,
                        //width: 1.0
                      )),
                  splashColor: Colors.black,
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    // MaterialPageRoute(
                    //      builder: (context) =>
                    //         Notify()
                    //),
                    //);
                  },
                  child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .04),
                          child: Container(
                            // padding: EdgeInsets.only(left: 8.0),
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .09,
                            // borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              image: AssetImage("images/ncc.png"),
                              fit: BoxFit.fill,
                              // alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .09),
                          child: Text(
                            "National Cadet Corps",
                            style: TextStyle(
                              fontFamily: 'Lekton',
                              fontWeight: FontWeight.w700,
                              // color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 5,
                              //  fontFamily: 'Arvo',
                            ),
                          ),
                        ),
                      ]))),

                      Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),

              // child: Padding(
              //    padding: EdgeInsets.only(
              //      bottom: SizeConfig.safeBlockVertical * 5),
              child: FlatButton(
                  highlightColor: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.transparent,
                        //width: 1.0
                      )),
                  splashColor: Colors.black,
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    // MaterialPageRoute(
                    //      builder: (context) =>
                    //         Notify()
                    //),
                    //);
                  },
                  child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .04),
                          child: Container(
                            // padding: EdgeInsets.only(left: 8.0),
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .09,
                            // borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              image: AssetImage("images/iedc.png"),
                              fit: BoxFit.fill,
                              // alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .09),
                          child: Text(
                            "IEDC",
                            style: TextStyle(
                              fontFamily: 'Lekton',
                              fontWeight: FontWeight.w700,
                              // color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              //  fontFamily: 'Arvo',
                            ),
                          ),
                        ),
                      ]))),

                      Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),

              // child: Padding(
              //    padding: EdgeInsets.only(
              //      bottom: SizeConfig.safeBlockVertical * 5),
              child: FlatButton(
                  highlightColor: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.transparent,
                        //width: 1.0
                      )),
                  splashColor: Colors.black,
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    // MaterialPageRoute(
                    //      builder: (context) =>
                    //         Notify()
                    //),
                    //);
                  },
                  child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .04),
                          child: Container(
                            // padding: EdgeInsets.only(left: 8.0),
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .09,
                            // borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              image: AssetImage("images/cec1.jpg"),
                              fit: BoxFit.fill,
                              // alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .09),
                          child: Text(
                            "Placement Cell",
                            style: TextStyle(
                              fontFamily: 'Lekton',
                              fontWeight: FontWeight.w700,
                              // color: Colors.black,
                              fontSize: SizeConfig.safeBlockHorizontal * 5,
                              //  fontFamily: 'Arvo',
                            ),
                          ),
                        ),
                      ]))),
        ],
      ),
    );
  }
}
