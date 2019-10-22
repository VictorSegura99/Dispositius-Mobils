import 'dart:ui';
import 'data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PlayerPage(playerstats: stats,),
    );
  }
}

class PlayerPage extends StatelessWidget {

final PlayerDataStats playerstats;

  const PlayerPage({
    Key key,
    @required this.playerstats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(stats.background),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(path.logo),
                            fit: BoxFit.fitWidth,
                          )),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 25,right: 25 ),
                        child: Icon(Icons.menu, color: Colors.white, size: 30),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Container(
                      margin: EdgeInsets.all(24),
                      height: 265,
                      width: 336,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(path.whitebox),
                          fit: BoxFit.fitHeight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 12),
                                  height: 80,
                                  width: 310,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(path.blackbox),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0)),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            stats.number,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
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
                                          )),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            stats.name,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24),
                                          ),
                                          Text(
                                            stats.team,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          )
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "POINTS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      stats.points,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 36),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, bottom: 20.0),
                                  child: Container(
                                      width: 2.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                      )),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "ASSITS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      stats.assists,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 36),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, bottom: 20.0),
                                  child: Container(
                                      width: 2.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                      )),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "STEALS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      stats.steals,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 36),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 0),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15),
                              height: 40,
                              width: 310,
                              child: Row(
                                children: <Widget>[
                                  Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20),
                                      child: Text(
                                        stats.last_match,
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(path.blackbox),
                                  fit: BoxFit.fitWidth,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
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
    );
  }
}
