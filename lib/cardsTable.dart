import 'package:flutter/material.dart';

class TableCards extends StatefulWidget {
  @override
  _TableCardsState createState() => _TableCardsState();
}


class _TableCardsState extends State<TableCards> {

  final Cards = ['Free', '10 coins', '50 coins', '100 coins',
    '150 coins', '200 coins', '250 coins', '300 coins', '350 coins',
    '400 coins', '450 coins', '500 coins'];

  int _selectedIndex ;



  _onSelected(int index)
  {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black87,
          ),
          Container(
            height: 270,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 120, 0, 0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Text(
                    'Choose Table',style:
                TextStyle(fontWeight: FontWeight.w700,fontSize: 40.0,color: Colors.white,)
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Choose and amount to find a player and',style:
                TextStyle(fontWeight: FontWeight.w700,fontSize: 15.0,color: Colors.white,)
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                    'start Playing !',style:
                TextStyle(fontWeight: FontWeight.w700,fontSize: 15.0,color: Colors.white,)
                ),
              ],
            ),
          ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 280, 25, 10),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:GridView.count(

                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  children: List.generate(12, (index) {
                    return Center(
                      child: InkWell(
                        onTap: (){
                          _onSelected(index);
                        },
                        child: Card(
                          margin: EdgeInsets.fromLTRB(05, 0, 10,30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                          color: _selectedIndex!=null && _selectedIndex == index
                              ? Colors.red
                              : Colors.white,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Image.asset('Assets/coin.png'),
                                  SizedBox(height: 20,),
                                 InkWell(
                                   onTap: (){
                                     _onSelected(index);
                                   },
                                   child:  Text(Cards[index] ,style: TextStyle(
                                     fontSize: 20.0,
                                     fontWeight: FontWeight.w400,
                                     color: _selectedIndex!=null && _selectedIndex == index
                                         ? Colors.white
                                         : Colors.black87,
                                   ),
                                   ),
                                 ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
      ),
    );
  }
}
