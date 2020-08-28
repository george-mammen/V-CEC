import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';


class EventService{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'eproddec2';


    void uploadDetails({String eventName,String details, String date, var image }){
      var id =Uuid();
      String pEventId = id.v1();
  _firestore.collection('ref').doc(pEventId).set({
    'name' : eventName,
    'id' : pEventId,
    'details' : details,
    'date' : date,
    'image' : image
  });
  
    }
}