import 'package:covid_19/name.dart';

import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  String _name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  
  @override
  
  Otp({Key key}):
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Number'),
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
          child: Center(child: Icon(Icons.phone,color: Colors.green[500],
          size: 120,
                  
                ),
                ),

          ),
          Container(
          child: Center(child: Column(children: <Widget>[
           Text('Step 1 of 3', style: TextStyle(color: Colors.black, fontSize: 30)),
           Text('Enter your mobile Number', style: TextStyle(color: Colors.black, fontSize: 15)),
           ],),
          ),
          ),
                   Center(child: SingleChildScrollView(
        child: Column(
             children: <Widget>[
                
                            Container(margin: EdgeInsets.only(top:0,bottom:10,left:60,right:60),
              child: Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                     TextField(
            decoration: const InputDecoration(
              hintText: '0200000000',
              hintStyle: TextStyle(color: Colors.indigo, ),
            counterStyle: TextStyle(color: Colors.indigo), 
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
            
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            maxLength: 10,
            
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
      
         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Name()),
                          );
    
                        }, 
             child: Text('verify me', ),
             
                 
             ),
          ),
             ],
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