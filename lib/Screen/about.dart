import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:proddeccec/widget/size_config.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
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
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 5,
                top: SizeConfig.safeBlockHorizontal * 5,
                right: SizeConfig.safeBlockHorizontal * 5),
            child: Material(
              borderRadius: BorderRadius.circular(24.0),
              child: SizedBox(
                width: SizeConfig.safeBlockHorizontal * 80,
                height: SizeConfig.safeBlockHorizontal * 100,
                child: Carousel(
                  boxFit: BoxFit.contain,
                  dotBgColor: Colors.transparent,
                  dotIncreasedColor: Colors.grey,
                  dotSize: 6.0,
                  images: [
                    AssetImage('images/i1.jpg'),
                    AssetImage('images/i2.jpg'),
                    AssetImage('images/i3.jpg'),
                    AssetImage('images/i4.jpg'),
                    AssetImage('images/i5.jpg'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            // padding: EdgeInsets.only(left: 3.0  right),
            width: SizeConfig.safeBlockHorizontal * 30,
            height: SizeConfig.safeBlockHorizontal * 70,
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage("images/logo.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.safeBlockHorizontal * 10,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'About',
                  style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      decoration: TextDecoration.underline),
                ),
                Text(
                  ' PRODDEC',
                  style:
                      TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 7),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 13,
                top: SizeConfig.safeBlockHorizontal * 13,
                right: SizeConfig.safeBlockHorizontal * 13),
            child: Text(
              'PRODDEC is a common platform for the Electronics and Computer students. Understanding the industry needs,PRODDEC has contributed greatly to the overall development of the students as competent engineers',
              style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 5,
          )
        ],
      ),
    );
  }
}
