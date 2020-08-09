import 'package:flutter/material.dart';
//import 'package:proddeccec/Screen/about.dart';
import 'package:proddeccec/Screen/event.dart';
import 'package:proddeccec/Screen/notification.dart';
//import 'package:proddeccec/Screen/event2.dart';
import 'package:proddeccec/widget/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 Future<void> _launchURL() async{
const url = 'https://gokulmanohar.github.io/proddec/';
if (await canLaunch(url)) {
  await launch(url);}
  else{
    throw 'Could not launch $url';
  }

}
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: _launchURL,
                          child: Container(
                height: MediaQuery.of(context).size.height * .76,
              //  height: SizeConfig.safeBlockVertical * 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/background2.gif"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),

            Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height *.007),
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
                              MaterialPageRoute(builder: (context) => Notify()),
                            );
                          },
                          child: Text(
                            "   Notice   ",
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                            //  fontFamily: 'Arvo',
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
                            "   Events   ",
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                             //  fontFamily: 'Arvo',
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

