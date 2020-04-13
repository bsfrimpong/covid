import 'dart:io';

import 'package:covid_19/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Name extends StatefulWidget {
  final String value;

  Name({Key key, this.value}) : super(key: key);
  

  @override
  _NameState createState() => new _NameState();
}

class _NameState extends State<Name> {
     String _name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  var _textController = new TextEditingController();
  File imageFile;
  

   _openGallery(BuildContext context) async{
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState((){
    Navigator.of(context).pop();
    });
  }
  _openCamera(BuildContext context) async{
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera );
    this.setState((){
      Navigator.of(context).pop();
    });

  }

  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text('Choose picture From'),
        content: SingleChildScrollView(
          child: ListBody(children: <Widget>[
            GestureDetector(child: Text('Gallery'),
            onTap: (){
              _openGallery(context);
            },
            ),
            Padding(padding: EdgeInsets.all(1.0)),
             GestureDetector(child: Text('Camera'),
            onTap: (){
              _openCamera(context);
            },
            ),
          ],),
        ),
      );
    });
    
  }
  Widget _decideImageView(){
    if(imageFile == null){
      return Text('No image Selected');
    }else{
      Image.file(imageFile,);
    }
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name'),
        backgroundColor: Colors.red[900],
      ),
      bottomNavigationBar: Container(height: 40,
      decoration: BoxDecoration(color: Colors.red[900],borderRadius: BorderRadius.only(topRight: Radius.elliptical(10000, 1000),), shape: BoxShape.rectangle,
      ),
      ),
      body: SingleChildScrollView(
        child: Stack(
        children: <Widget>[
          Container(child: Column(children: <Widget>[

          
          CircleAvatar(
            radius: 30,
          
           child: _decideImageView(),
          ),
           RaisedButton(onPressed: (){
              _showChoiceDialog(context);
            },
            ),
          Container(
          child: Center(child: Column(children: <Widget>[
           Text('Step 2 of 3', style: TextStyle(color: Colors.black, fontSize: 30)),
           Text('Please enter your full name', style: TextStyle(color: Colors.black, fontSize: 15)),
           ],),
          ),
          ),
                    Center(child: SingleChildScrollView(
           child: Form(autovalidate: true,
        key: _formKey,
        child: Column(
             children: <Widget>[
                
                            Container(margin: EdgeInsets.only(top:10,bottom:10,left:60,right:60),
              child: Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                     TextFormField(
                       controller: _textController,
            decoration: const InputDecoration(contentPadding: EdgeInsets.symmetric(vertical:0.0,horizontal: 0.0), 
            hintText: 'Veronica Osei',
            hintStyle: TextStyle(color: Colors.red),
            counterStyle: TextStyle(color: Colors.green), 
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
            
            prefixIcon: Icon(Icons.person, color: Colors.red,),
            
            ),
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length < 2){
                return 'Please enter a valid name';
              }
            },
          ),
                  ]),
              ),
            ),
                
                Container(width: 265.0,
                      margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0,),
                      child:  FlatButton(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(18.0),
               side: BorderSide(color: Colors.red),
             ),
             color: Colors.black,
             disabledColor: Colors.black,
             textColor: Colors.yellow,
                        
  onPressed: () {
      if(_formKey.currentState.validate()) {
         var route = new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new UserPage(value: _textController.text),
                );
                Navigator.of(context).push(route);
      }
    
                        }, 
             child: Text('Go', ),
             
                 
             ),
        ),

             ],
        ),
           ),
         ),
         ),
          ]),),
        ],
      ),
      ),
    );
  }
}