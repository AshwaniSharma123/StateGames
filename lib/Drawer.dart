import 'package:flutter/material.dart';
import 'package:strate_games/LoginScreen.dart';
import 'package:strate_games/cardsTable.dart';
import 'package:strate_games/profile.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}
class _DrawerScreenState extends State<DrawerScreen> {
int _index = 0;


colorChange(){
  setState( () {
    _index = 4;
  }
  );
}
colorChange1(){
  setState( () {
    _index = 3;
  }
  );
}
colorChange2(){
  setState( () {
    _index = 1;
  }
  );
}
colorChange3(){
  setState( () {
    _index = 2;
  }
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.add,color: Colors.red),
          ),
        ],
       // leading: Icon(Icons.menu,),
        title: Text(
          ''
        ),
        backgroundColor: Colors.black,
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
            color: Colors.red,
            child:  ListView(
              children: <Widget>[
             InkWell(onTap: (){
               Navigator.pop(context);
             },
              child:  ListTile(
                 trailing: Icon(Icons.clear,
                   color: Colors.white,),
               ),
             ),
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  accountName: Text('Ashwani Sharma',style: TextStyle(
                    fontSize: 22.0,
                  ),),
                  accountEmail:  Text("GAMER ID: 564897",style: TextStyle(
                    fontSize: 17.0,
                  ),),
                  currentAccountPicture : CircleAvatar(
                    backgroundColor:Colors.white,
                    child:  Text("User"),
                  ),
                ),
                ListTile(
                    title:  Text("Profile",style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white
                    ),),
//                    leading: IconButton(
//                      icon: Image.asset('Assets/profile.png',
//                      color: Colors.white,),
//                    ),
                    leading:  Icon(Icons.person,color: Colors.white,),
                    onTap: (){Navigator.of(context).pop();
//                   Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (BuildContext context)=>ProfileScreen()));
                    }
                ),
                ListTile(
                    title:  Text("Transaction",style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),),
                    leading:  Icon(Icons.attach_money,color: Colors.white,),
                    onTap: (){Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (BuildContext context)=>LoginScreen()));}
                ),
                ListTile(
                  title:  Text("Buy Coins",style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),),
                  leading:  Icon(Icons.monetization_on,color: Colors.white,),
                ),
                ListTile(
                  title:  Text("Select Game",style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
                  leading:  Icon(Icons.videogame_asset,
                  color: Colors.white,),
                ),
                ListTile(
                  title:  Text("Legal",style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),),
                  leading:  Icon(Icons.description,color: Colors.white,),
                ),
                ListTile(
                  title:  Text("Notification",style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
                  leading:  Icon(Icons.notifications,color: Colors.white,),
                ),
                ListTile(
                  title:  Text("Sign Out",style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                   ),
                  ),
                  onTap: () => Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (BuildContext context)=>LoginScreen())),
                  leading:  Icon(Icons.call_missed_outgoing,
                  color: Colors.white,),
                ),
              ],
            ),
          ),
        ),
      ),
    body: Stack(
      children: <Widget>[
      Container(
        color: Colors.black,
        child:
           Column(
             children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   CircleAvatar(
                     radius: 60,
                     child: Image.asset('Assets/images2.png',height: 90,width: 90,),
                     backgroundColor: Colors.white,
                   ),
                  Column(
                    children: <Widget>[
                      Text('Ashwani Sharma'
                        ,style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                      Text('GAMER ID: 564897'
                        ,style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                         FlatButton(
                           padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                           child:Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: <Widget>[
                               Icon(Icons.monetization_on,color: Colors.redAccent,),
                               Text('     10 Coins'),
                             ],
                           ),
                           onPressed: (){
                           },
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           color: Colors.amber,
                         ),
                        ],
                       ),
                      ],
                     ),

               SizedBox(height: MediaQuery.of(context).size.height*0.179,),
              Stack(
                children: <Widget>[
                  Card(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topRight: Radius.circular(35),topLeft:Radius.circular(35)), ),
                    // margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                    elevation: 10.0,
                    child:  Container(
                      decoration:  BoxDecoration(color: Colors.red,
                        borderRadius:  BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: MediaQuery.of(context).size.height*0.52,
                      width: MediaQuery.of(context).size.width*0.92,
                      //color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                          Row(
                            children: <Widget>[
                              Text("   Choose",style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                               ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                              Text("   your game",style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                ),
                               ),
                            ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                color: Colors.white,
                                child: Container(
                                  child:  ClipRRect(
                                    borderRadius:  BorderRadius.circular(15.0),
                                    child:  Image.asset('Assets/image4.png',height: 150,width: 150,),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                color: Colors.white,
                                child: Container(
                                  child:  ClipRRect(
                                    borderRadius:  BorderRadius.circular(15.0),
                                    child:  Image.asset('Assets/image3.png',height: 150,width: 150,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "CHESS",style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                               ),
                              ),
                              Text(
                                "CHECKERS",style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                               ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
             ],
           ),
          ),

        Positioned(
          bottom: 00,
          child: Container(
            child:  Card(
              elevation: 5.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topRight: Radius.circular(30),topLeft:Radius.circular(30)), ),
              child: Container(

                height: MediaQuery.of(context).size.height*0.065,
                width: MediaQuery.of(context).size.width*0.98,
              ),
            ),
          ),
        ),
       Positioned(
         bottom: 30,
         child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
           SizedBox(width: MediaQuery.of(context).size.width*0.075,),
           InkWell(
             onTap: (){
               Navigator.push(                      //Routes Pages here........
                 context,
                 MaterialPageRoute(builder: (context) => ProfileScreen()),
               );
             },
             child:Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,boxShadow: [ BoxShadow(
                color: Colors.black,
                blurRadius: 05.0,
              ),] ),
               child:  Align(
                 alignment: Alignment.bottomCenter,
                 child: CircleAvatar(
                   radius: 25,
                   child: Image.asset('Assets/imageProfile.png'),
                   backgroundColor: Colors.white,
                 ),
               ),
             ),
           ),
           SizedBox(width: 20,),
           InkWell(
             onTap: (){
               colorChange2();
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => TableCards()),
               );
               //Routes Pages here........
             },
             child:Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,boxShadow: [ BoxShadow(
                 color: Colors.black,
                 blurRadius: 05.0,
               ),] ),
               child:  Align(
                 alignment: Alignment.bottomCenter,
                 child: CircleAvatar(
                   radius: 25,
                   child: Image.asset('Assets/imageStar.png'),
                   backgroundColor: _index == 1 ? Colors.red: Colors.white,
                 ),
               ),
             ),
           ),
           SizedBox(width: 20,),
           InkWell(
             onTap: (){
               colorChange3();
               //Routes Pages here........
             },
             child: Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.red,boxShadow: [ BoxShadow(
                   color: Colors.greenAccent,
                   blurRadius: 5.0,
                 ),] ),
               child: Align(
                 alignment: Alignment.bottomCenter,
                 child: CircleAvatar(
                   radius: 35,
                   child: Image.asset('Assets/imageRemote.png'),
                   backgroundColor: _index == 2 ? Colors.pink : Colors.red,
                 ),
               ),
             ),
           ),
           SizedBox(width: 20,),
           InkWell(
             onTap: (){
               colorChange1();
                     //Routes Pages here........
             },
             child:Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,boxShadow: [ BoxShadow(
                 color: Colors.black,
                 blurRadius: 05.0,
               ),] ),
               child:  Align(
                 alignment: Alignment.bottomCenter,
                 child: CircleAvatar(
                   radius: 25,
                   child: Image.asset('Assets/ImageNotify.png'),
                   backgroundColor: _index == 3 ? Colors.red : Colors.white,
                 ),
               ),
             ),
           ),
           SizedBox(width: 20,),
          InkWell(
            onTap: (){
//              setState(() {
//                _index= 4;
//              });
            colorChange();  //Routes Pages here........
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,boxShadow: [ BoxShadow(
                color: Colors.black,
                blurRadius: 05.0,
              ),] ),
              child:  Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset('Assets/imageMore.png'),
                  backgroundColor: _index == 4? Colors.red : Colors.white,
                ),
               ),
              ),
             ),
          ],
         ),
        ),
      ],
     ),
    );
  }
}




















































//  int _selectedIndex = 0;
//
//  static double IconSize = 200;
//  static List<Widget> _widgetOptions = <Widget>[
//    LoginScreen(),
//    DrawerScreen(),
//
//  ];
//
//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    }
//    );
//  }



//      bottomNavigationBar:  BottomNavigationBar(
//        items:  <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(Icons.lock,color: Colors.black,),
//            title: Text('Sign In'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.info,color: Colors.pink,),
//            title: Text('Details'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.edit,color: Colors.green,),
//            title: Text('Edit'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.person,color: Colors.black,),
//            title: Text('Sign In'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.menu,color: Colors.black,),
//            title: Text('Sign In'),
//          ),
//        ],
//        currentIndex: _selectedIndex,
//        selectedItemColor: Colors.amber[800],
//        showUnselectedLabels: false,
//        onTap: _onItemTapped,
//      ),