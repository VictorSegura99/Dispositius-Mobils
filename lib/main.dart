import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body:Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/steph.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 275),
                      child: Container(
                        margin: EdgeInsets.all(24),
                        height: 325,
                        width: 336,
                        decoration: BoxDecoration(
                          image:DecorationImage(                  
                                image: AssetImage('assets/images/whitebox.jpg'),
                                fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:10),
                              child:Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 12),
                                    height: 80,
                                    width: 310,
                                    decoration: BoxDecoration(
                                     image:DecorationImage(                  
                                        image: AssetImage('assets/images/blackbox.jpg'),
                                        fit: BoxFit.fitWidth,
                                     ),
                                     borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    ),
                                    child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text("#30",style: TextStyle(color: Colors.white,fontSize: 30),),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        width: 4.0,
                                        height: 46.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        )
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text("STEPHEN CURRY",style: TextStyle(color: Colors.white,fontSize: 24),),
                                          Text("PG | Golden State Warriors",style: TextStyle(color: Colors.white,fontSize: 16),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text("POINTS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14,),),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("46",style: TextStyle(color: Colors.black,fontSize: 36),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                                      child: Container(
                                          width: 2.0,
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                          )
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                         Text("ASSITS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14,),),
                                        SizedBox(
                                          height: 10,
                                        ),
                                         Text("12",style: TextStyle(color: Colors.black,fontSize: 36),),
                                      ],
                                    ),
                                    Padding(
                                     padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                                      child: Container(
                                          width: 2.0,
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                          )
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                         Text("STEALS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14,),),
                                        SizedBox(
                                          height: 10,
                                        ),
                                         Text("4",style: TextStyle(color: Colors.black,fontSize: 36),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            Expanded(
                              child: Container(
                                    margin: EdgeInsets.only(bottom: 15),
                                    height: 30,
                                    width: 310,
                                    child: Row(
                                      children: <Widget>[
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: Text(
                                            "Last Saturday vs. Rockets", style: TextStyle(fontSize: 24,color: Colors.white),
                                        ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                     image:DecorationImage(                  
                                        image: AssetImage('assets/images/blackbox.jpg'),
                                        fit: BoxFit.fitWidth,
                                     ),
                                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
