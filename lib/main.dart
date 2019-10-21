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
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(0),
                              child:Center(
                                child: Container(
                                  margin: EdgeInsets.only(left:18,bottom: 160),
                                  height: 80,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    image:DecorationImage(                  
                                      image: AssetImage('assets/images/blackbox.jpg'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "#30 | STEPHEN CURRY",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white, fontSize: 26,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 120),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                          Expanded(
                                            child: Center(
                                              child: Text(
                                                "36",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                  "Points",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                  "36",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                  "Points",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          Expanded(
                                            flex: 1,
                                            child: Center(
                                              child: Text(
                                                "36",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ),
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
