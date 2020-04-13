

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class UserPage extends StatefulWidget {
  final String value;

  UserPage({Key key, this.value}) : super(key: key);

  @override
  _UserPageState createState() => new _UserPageState();
}

class _UserPageState extends State<UserPage> {
  
  @override
  Widget build(BuildContext context) {
        return Scaffold(
           bottomSheet: BottomAppBar(
            child: Container(color: Colors.red[900],
            height: 50.0,
            width: double.infinity,
            child: Row(children: <Widget>[
              Icon(Icons.person, color: Colors.white,),
              Text("${widget.value}", style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold)),
          Spacer(flex: 5,),
          Container(child: Image.asset('assets/images/flag.jpg'),
          ),
        ],
        ),
        ),
      ),
             appBar: AppBar(
         actions: <Widget>[
           IconButton(icon: Icon(Icons.message), 
           onPressed: null,
           color: Colors.white,
           disabledColor: Colors.white,
           ),
           IconButton(icon: Icon(Icons.info), 
           onPressed: null,
           color: Colors.white,
           disabledColor: Colors.white,
           ),
           IconButton(icon: Icon(Icons.gps_fixed), 
           onPressed: null,
           color: Colors.white,
           disabledColor: Colors.white,
           ),
           IconButton(icon: Icon(Icons.brightness_1, color: Colors.yellow,), 
           onPressed: null,
           ),
         ],
        backgroundColor: Colors.red[900],
        title: Text('Home'),
        ),
        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),),
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('assets/images/flag.jpg'),
                fit: BoxFit.cover
                ),
                color: Colors.red[900],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Calendar'),
              onTap: (){
                 //Navigator.push(
                                //context,
                                //MaterialPageRoute(builder: (context) => Calendar()),
                              //);
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: (){
               // Navigator.push(
                     //           context,
                         //       MaterialPageRoute(builder: (context) => About()),
                           //   );
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Profile'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Logout'),
              onTap: (){},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(child: Column(children: <Widget>[
        CarouselSlider(aspectRatio: 16/9,initialPage: 0,
        enableInfiniteScroll: true,enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 3),autoPlayAnimationDuration: Duration(milliseconds:800),
        
        items: <Widget>[
          Image.asset('assets/images/security.jpg', fit: BoxFit.fitWidth,),
           Image.asset('assets/images/adaakwa.jpg',fit: BoxFit.fitWidth,),
            Image.asset('assets/images/dean.jpg', width: double.infinity,),
             Image.asset('assets/images/ghana.jpg', fit: BoxFit.fitWidth,),
              Image.asset('assets/images/flag.jpg', fit: BoxFit.fitWidth,),
          ],
          autoPlay: true,
        ),
        Container(decoration: BoxDecoration(shape: BoxShape.rectangle, ),
          margin: EdgeInsets.only(left: 35, bottom: 20),
          child: Row(children: <Widget>[
          FlatButton(onPressed: null, child: Column(children: <Widget>[
            Icon(Icons.message, size: 80,color: Colors.black,),
            Text('Messages', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w900),)
          ],)),
          FlatButton(onPressed: null, child: Column(children: <Widget>[
            Icon(Icons.brightness_1, size: 80,color: Colors.red,),
            Text('Report Case', style: TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.w900),)
          ],)),
          FlatButton(onPressed: null, child: Column(children: <Widget>[
            Icon(Icons.chat_bubble_outline, size: 80,color: Colors.black,),
            Text('Chat Doctor', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w900),)
          ],)),
          
        ],),),
        Container(margin: EdgeInsets.only(left: 35,bottom: 30),
          child: Row(children: <Widget>[
          FlatButton(onPressed: null, child: Column(children: <Widget>[
            Icon(Icons.fastfood, size: 80,color: Colors.black,),
            Text('Food Supplies', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w900),)
          ],)),
        ],),),
        Container(child: Column(children: <Widget>[
          Title(color: Colors.black, 
          child: Text('News on Covid-19', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40.0, color: Colors.black),
             textAlign: TextAlign.center,
             ),)
        ],
        ),),
      ],)),
    );
  }
}