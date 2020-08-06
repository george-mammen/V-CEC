//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:proddeccec/widget/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:connectivity/connectivity.dart';


class About extends StatelessWidget {
   
  List<Image> _listOfImages = <Image>[];
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
      body:     ListView(
         // shrinkWrap: true,
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
                height: SizeConfig.safeBlockHorizontal * 80,
                
                child: StreamBuilder(
                stream: Firestore.instance.collection('About').snapshots(),
                
               // getList(
                 // snapshot?.data[index]?.data['image'] ?? ''
                //),
                builder: (context, snapshot) {
                  if (!snapshot.hasData){
                    return Container(
                      child: Center(
                       // child: CachedNetworkImage(
                         // imageUrl: "http://via.placeholder.com/350x150",
                         // fit: BoxFit.cover,
                         // progressIndicatorBuilder: (context,url,downloadProgress)
                         // {
                         // return  Center(
                              child:  CircularProgressIndicator()
                              //Text('hello')
                              //( value: downloadProgress.progress,),
                      ),
                            );
                          }
                           //  errorWidget: (context,url,error) => Icon(Icons.error),                 //child: Center(
                            //  child: 
                              //Text('hello')             
                  
            
                   else {
                   return ListView.builder(
                      
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (BuildContext context, int index) {
                          _listOfImages = [];
                          for (int i = 0;
                              i < snapshot.data.documents[index].data['image'].length;
                              i++
                              )
                               {
                            _listOfImages.add(Image.network(snapshot
                                .data.documents[index].data['image'][i],fit:BoxFit.fill));
                          }
                return ClipRRect(
                  borderRadius: BorderRadius.circular(23.0),
                                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 5 ,
                    height:SizeConfig.safeBlockVertical * 39,
                    child: Carousel(
                      boxFit: BoxFit.fill,
                      dotBgColor: Colors.transparent,
                      dotIncreasedColor: Colors.lightBlue,
                      dotSize: 6.0,
                      images: 
                       _listOfImages
                       // AssetImage('images/i1.jpg'),
                       // AssetImage('images/i2.jpg'),
                      //  AssetImage('images/i3.jpg'),
                      //  AssetImage('images/i4.jpg'),
                      //  AssetImage('images/i5.jpg'),
                      
                        ),
                  ),
                );
                        }
                    );
                  }
                }
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
