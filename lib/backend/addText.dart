import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';


class Title{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'eproddec';


    void event(String eTitle, String eSubtitle,String eDate, String eImage ){
      var id =Uuid();
      String eventId = id.v1();
  _firestore.collection('ref').doc(eventId).set({
    'title' : eTitle,
    'subtitle' : eSubtitle,
    'date' : eDate,
    'image' : eImage
  });
  
    }
}