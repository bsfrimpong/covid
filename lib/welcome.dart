import 'package:flutter/material.dart';

import 'otp.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(children: <Widget>[
        
        
                  Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/images/flag.jpg', ),
             fit: BoxFit.cover
             ),
           ),
         ),
         Container(margin: EdgeInsets.only(left: 10, right: 10),
           child: Column(children: <Widget>[
             Container(
               alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 100,),
             child: Text('Covid-19', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50.0, color: Colors.white),
             textAlign: TextAlign.center,
             ),
             ),
             Container(alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 5,bottom: 50.0),
             child: Text('Covid-19 is an infectious disease caused by a new virus, we know how to bring the economy back to life but we dont know how to bring the dead back to life. Lets come together and stop the spread of covid-19' , style: TextStyle( fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w900),
             textAlign: TextAlign.justify,
             ),
             ),
             Wrap(runSpacing: 20,
               children: <Widget>[

              FlatButton.icon(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(18.0),
               side: BorderSide(color: Colors.yellow),
             ),
             color: Colors.yellow,
             disabledColor: Colors.yellow,
             textColor: Colors.black,
               onPressed: () {
      
         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Otp()),
                          );
      
    
                        }, 
               icon: Icon(Icons.security, color: Colors.black,), 
             label: Text('Get Started', ),
             
                 
             ),
             
            
             ]
),
      ],
        
      ),
    )
        
      ],
    ),
      
    );
  }
}