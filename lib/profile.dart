import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera,maxHeight: MediaQuery.of(context).size.height*.4,maxWidth: MediaQuery.of(context).size.width);
    setState( ()
    {
      _image = image;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: <Widget>[
          Container(
            color: Colors.black87,
          ),
          Container(
            height: 280,
            color: Colors.red,
          ),
              Container(
               // alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(20, 100, 0, 0),
              child:   Text('Profile',style: TextStyle(
               fontSize: 40.0,
             color: Colors.white,
                 ),
                ),
               ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Center(
            child:  Container(
            //  height: 500,
              //width: 100,
              child:   InkWell(
                onTap: (){
                  getImage();
                },
                child:  CircleAvatar(
                  child:  ClipOval(
                   child:      SizedBox(
                     width: 180.0,
                     height: 180.0,
                     child: (_image!=null)?Image.file(
                       _image,
                       fit: BoxFit.fill,
                     ):Image.asset('Assets/images1.jpeg'),
                   ),
                       ),
                  radius: 90,
                 // backgroundColor: Colors.redAccent,
                ),
              ),
               ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.38),
            ],
          ),
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           SizedBox(height: 130,),
           Center(
             child:  Text('Ashwani Sharma',style: TextStyle(
               fontWeight: FontWeight.w400,
               fontSize: 30.0,
               color: Colors.white,
             ),),
           ),
           Center(
             child:  Text('GAMER ID: 564897',style: TextStyle(
               fontWeight: FontWeight.w400,
               fontSize: 20.0,
               color: Colors.grey,
             ),),
           ),
           SizedBox(height: 40,),
          Container(
            width: 320,
            child:  FlatButton(
              padding: EdgeInsets.fromLTRB(10, 10,140, 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.monetization_on,color: Colors.redAccent,),
                 Text('10 Coins'),

                ],
              ),
              onPressed: (){
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              color: Colors.amber,
            ),
          ),
           SizedBox(
             height: 15,
           ),
           Container(
             width: 320,
             child: FlatButton(
               padding: EdgeInsets.fromLTRB(10, 10, 120, 10),
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Icon(Icons.monetization_on,color: Colors.white,),
                   Text('Reedem Coins',style: TextStyle(
                     color: Colors.white,
                   ),),
                 ],
               ),
               onPressed: (){
               },
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
               color: Colors.red,
             ),
           ),
         ],
       ),
   ],
      ),
    );
  }
}







//ClipOval(
//child: new SizedBox(
//width: 180.0,
//height: 180.0,
//child: (_image!=null)?Image.file(
//_image,
//fit: BoxFit.fill,
//):Image.network(
//"https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
//fit: BoxFit.fill,
//),
//),
//),