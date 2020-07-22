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
      body:Container(
            // width:SizeConfig.safeBlockHorizontal  ,
            // height: SizeConfig.safeBlockVertical ,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
              //    width: SizeConfig.safeBlockHorizontal * 100,
                  height: SizeConfig.safeBlockVertical * 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/background2.gif"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.safeBlockVertical * 10,
                ),
             //   Expanded(
                 // child:
                   Container(
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
                                  shape: Border.all(
                                      width: 1.0, color: Colors.black),
                                  splashColor: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => About()),
                                    );
                                  },
                                  child: Text(
                                    "About",
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                  )),
                            ),
                            Container(
                              child: FlatButton(
                                  highlightColor: Colors.white,
                                  shape: Border.all(
                                      width: 1.0, color: Colors.black),
                                  splashColor: Colors.black,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Event()),
                                    );
                                  },
                                  child: Text(
                                    "Events",
                                    style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 6,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                SizedBox(height: SizeConfig.safeBlockVertical * 4,),
              ],
            ),
          
      ),
    );
  }
}
