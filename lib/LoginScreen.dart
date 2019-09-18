import 'package:flutter/material.dart';
import 'package:strate_games/main.dart';
import 'Drawer.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black87,
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              Center(
                child:  Image.asset('Assets/AppIcon.png',width: 170,height: 170,),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.20,),
              Text('Continue With',
                style: TextStyle(
                  color: Colors.grey,fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.020,),
              Container(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen()),
                    );
                  },
                  child:  Container(
                    height: MediaQuery.of(context).size.width*0.12,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration:  BoxDecoration(color: Colors.indigo,
                        borderRadius:  BorderRadius.circular(30.0),
                        border:  Border.all(color: Colors.indigo)
                    ),
                    child: Center(
                      child:Text(
                        '  Sign in with Facebook  ',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.015),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashScreen()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.width*0.12,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration:  BoxDecoration(color: Colors.red,
                      borderRadius:  BorderRadius.circular(30.0),
                      border:  Border.all(color: Colors.red)
                  ),
                  child: Center(
                    child:Text(
                      '  Sign in with Google    ',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              FlatButton(
                splashColor: Colors.blue,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DrawerScreen()),
                  );
                },
                child: Text('  Skip  ',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                  color: Colors.grey,
                ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
