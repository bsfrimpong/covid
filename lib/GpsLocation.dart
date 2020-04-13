import 'package:covid_19/HomePage.dart';

import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  String _name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  
  @override
  
  Location({Key key}):
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GhanaPost Gps Address'),
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

          
          Container(height: 150, width: double.infinity,
          child: Center(child: Icon(Icons.home,color: Colors.green[500],
          size: 120,
                  
                ),
                ),

          ),
          Container(
          child: Center(child: Column(children: <Widget>[
           Text('Step 3 of 3', style: TextStyle(color: Colors.black, fontSize: 30)),
           Text('Please enter your GhanaPost gps Adress', style: TextStyle(color: Colors.black, fontSize: 15)),
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
                       
            decoration: const InputDecoration(contentPadding: EdgeInsets.symmetric(vertical:0.0,horizontal: 0.0), 
            hintText: 'AS-0000-0000',
            hintStyle: TextStyle(color: Colors.red),
            counterStyle: TextStyle(color: Colors.green), 
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
            
            prefixIcon: Icon(Icons.person, color: Colors.red,),
            
            ),
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length < 2){
                return 'Please enter a valid Address';
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
         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UserPage()),
                          );
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