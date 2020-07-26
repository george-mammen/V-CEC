import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/about.dart';
import 'package:proddeccec/Screen/event.dart';
//import 'package:proddeccec/Screen/event2.dart';
import 'package:proddeccec/widget/size_config.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              height: SizeConfig.safeBlockVertical * 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background2.gif"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                // child: Padding(
                //    padding: EdgeInsets.only(
                //      bottom: SizeConfig.safeBlockVertical * 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: FlatButton(
                          highlightColor: Colors.white,
                          shape: Border.all(width: 1.0, color: Colors.black),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => About()),
                            );
                          },
                          child: Text(
                            "About",
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                            ),
                          )),
                    ),
                    Container(
                      child: FlatButton(
                          highlightColor: Colors.white,
                          shape: Border.all(width: 1.0, color: Colors.black),
                          splashColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Event(),)
                            );
                          },
                          child: Text(
                            "Events",
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
