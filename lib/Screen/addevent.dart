import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

import 'package:path/path.dart';
import 'package:proddeccec/backend/dbevent.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController eventNameController = TextEditingController();
  TextEditingController eventDetailsController = TextEditingController();
  TextEditingController eventDateController = TextEditingController();

  File _image;
  bool isLoading = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  EventService eventService = EventService();
  @override
  Widget build(BuildContext context) {
    void validateAndUpload() {
      if (_formKey.currentState.validate()) {
        setState(() => isLoading = true);
        if (_image != null) {
          String imageUrl;
          final FirebaseStorage storage = FirebaseStorage.instance;
          final String picture =
              "${DateTime.now().millisecondsSinceEpoch.toString()}.jpg";
          StorageUploadTask task = storage.ref().child(picture).putFile(_image);
          task.onComplete.then((snapshot) async {
            imageUrl = await snapshot.ref.getDownloadURL();
            String imageL = imageUrl;
            eventService.uploadDetails(
                eventName: eventNameController.text,
                details: eventDetailsController.text,
                date: eventDetailsController.text,
                image: imageL);
            _formKey.currentState.reset();
            setState(() => isLoading = false);
            Fluttertoast.showToast(msg: 'Event added');
            Navigator.pop(context);
          });
        } else {
          setState(() => isLoading = false);
          Fluttertoast.showToast(msg: 'image must be provided');
        }
      }
    }

    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

    // Future uploadPic(BuildContext context) async {
    // String fileName = basename(_image.path);

    //StorageReference firebaseStorageRef =
    //  FirebaseStorage.instance.ref().child(fileName);
    //StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
    //StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    // setState(() {
    // Scaffold.of(context)
    //   .showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
    // });
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text('Event Upload'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: OutlineButton(
                        child: Container(
                          width: 170.0,
                          height: 180.0,
                          child: (_image != null)
                              ? Image.file(
                                  _image,
                                  fit: BoxFit.fill,
                                )
                              : Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                        ),
                        onPressed: () {
                          getImage();
                        },
                      ),
                    ),
                    TextFormField(
                      controller: eventNameController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Title',
                        labelText: 'Title',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter the Event name';
                       }
                     },

                        // return null;
                    
                    ),
                    TextFormField(
                      controller: eventDetailsController,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Short words',
                        labelText: 'Short Words',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter the Event name';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventDateController,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Date (DD/MM/YYYY)',
                        labelText: 'Date (DD/MM/YYYY)',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter the Event name';
                       }
                     },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                      color: Color(0xff476cfb),
                      onPressed: () {
                        validateAndUpload();
                      },
                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
