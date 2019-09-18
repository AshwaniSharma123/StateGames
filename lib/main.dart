import 'package:flutter/material.dart';
import 'dart:async';
import 'LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "State games",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/LoginScreen': (BuildContext context) =>  LoginScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() =>  _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration =  Duration(seconds: 2);
    return  Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
     Container(
       color: Colors.black87,
       child: Stack(
         children: <Widget>[
           Center(
             child:  Image.asset('Assets/AppIcon.png',width: 170,height: 170,),
           ),
         ],
       ),
     ),
    );
  }
}


