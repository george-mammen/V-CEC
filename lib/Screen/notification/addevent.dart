import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

//import 'package:path/path.dart';
import 'package:proddeccec/Screen/notification/dbevent.dart';

class ProfilePage extends StatefulWidget {

  
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  TextEditingController eventNameController = TextEditingController();
  TextEditingController eventDetailsController = TextEditingController();
  TextEditingController eventLink1Controller = TextEditingController();
  TextEditingController eventLink2Controller = TextEditingController();
  TextEditingController eventLink3Controller = TextEditingController();
  TextEditingController eventButton1Controller = TextEditingController();
  TextEditingController eventButton2Controller = TextEditingController();
  TextEditingController eventButton3Controller = TextEditingController();


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
                title: eventNameController.text,
                details: eventDetailsController.text,
                link1: eventLink1Controller.text,
                link2: eventLink2Controller.text,
                link3: eventLink3Controller.text,
                button1: eventButton1Controller.text,
                button2: eventButton2Controller.text,
                button3: eventButton3Controller.text,
                
                image: imageL);
            _formKey.currentState.reset();
            setState(() => isLoading = false);
            Fluttertoast.showToast(msg: 'Notification added');
           // Navigator.pop(context);
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

    return Scaffold(
      appBar: AppBar(
        title: Text('Event Upload'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView(
                //  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height *.02),
                      child: Align(
                        alignment: Alignment.center,
                        child: OutlineButton(
                          child: Container(
                            width: MediaQuery.of(context).size.width * .5,
                            height: MediaQuery.of(context).size.width * .6,
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
                    ),


                    Padding(
                      padding: EdgeInsets.only(top:MediaQuery.of(context).size.width * .1),
                      child: TextFormField(
                        controller: eventNameController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Title',
                          labelText: 'Title',
                        ),
                       validator: (value){
                         if(value.isEmpty){
                           return 'You must enter the Title';
                         }
                       },

                         
                      
                      ),
                    ),
                    TextFormField(
                      controller: eventDetailsController,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Details',
                        labelText: 'Details',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter some words';
                       }
                       if(value.length > 25){
                          return 'Should be less than 25 characters';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventLink1Controller,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Link 1',
                        labelText: 'Link 1',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter the date';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventLink2Controller,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Link 2',
                        labelText: 'Link 2',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter some words';
                       }
                       if(value.length > 25){
                          return 'Should be less than 25 characters';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventLink3Controller,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Link 3',
                        labelText: 'Link 3',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter some words';
                       }
                       if(value.length > 35){
                          return 'Should be less than 35 characters';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventButton1Controller,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Button 1',
                        labelText: 'Button 1',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter some words';
                       }
                       if(value.length > 25){
                          return 'Should be less than 25 characters';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventButton2Controller,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Button 2',
                        labelText: 'Button 2',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter some words';
                       }
                       if(value.length > 25){
                          return 'Should be less than 25 characters';
                       }
                     },
                    ),
                    TextFormField(
                      controller: eventButton3Controller,
                      decoration:  InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Button 3',
                        labelText: 'Button 3',
                      ),
                     validator: (value){
                       if(value.isEmpty){
                         return 'You must enter some words';
                       }
                       if(value.length > 25){
                          return 'Should be less than 25 characters';
                       }
                     },
                    ),
                    SizedBox(
                      height:MediaQuery.of(context).size.width * .1,
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
