import 'package:flutter/material.dart';
import 'data.dart';

void main() => runApp(Assigment2App());

class Assigment2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FavoritePlayers(),
    );
  }
}

class FavoritePlayers extends StatefulWidget {
  @override
  _FavoritePlayersState createState() => _FavoritePlayersState();
}

class _FavoritePlayersState extends State<FavoritePlayers> {
  List<PlayerDataStats> favorite_players;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Favorite Players"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 80,
            child: ListView.separated(
              itemCount: favorite_players.length,
              itemBuilder: (context, index) {
                final PlayerDataStats players = favorite_players[index];
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PlayerPage(
                        playerstats: stats,
                      ),
                    ));
                  },
                  trailing: IconButton(
                    icon: Icon(Icons.star),
                    iconSize: 25,
                    onPressed: () {
                      setState(() {
                        Icon(Icons.star_border);
                      });
                    },
                  ),
                  title: Text(players.name),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey[300],
                  height: 1,
                  thickness: 1,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        onPressed: () {
          Navigator.of(context)
              .push(
            MaterialPageRoute(
              builder: (context) => PlayerToCheck(),
            ),
          ).then((new_favorites) {
            if (new_favorites != null) {
              // es l'únic que no he aconseguit que funcioni, no se perquè em dona un error aquí
              List<PlayerDataStats> players_list = new_favorites;
              setState(() {
                for (int i = 0; i < players_list.length; ++i) {
                  favorite_players.add(players_list[i]);
                }
              });
            }
          });
        },
      ),
    );
  }
}

class PlayerToCheck extends StatefulWidget {
  @override
  _PlayerToCheckState createState() => _PlayerToCheckState();
}

class _PlayerToCheckState extends State<PlayerToCheck> {
  Map players=new Map(); // guardo el nom i assigno el icono de la checkbox sense clicar per poder canviar el state despres
  List<PlayerDataStats> all_players=new List<PlayerDataStats>();
  @override
  void initState() {

    for (int i = 0; i < all_players.length; ++i) {
      players[all_players[i].name] = Icons.star_border;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Players"),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {
              List<PlayerDataStats> to_add = new List<PlayerDataStats>();
              for (int i = 0; i > all_players.length; ++i) {
                if (players[all_players[i].name] == Icons.check_box) {
                  to_add.add(all_players[i]);
                }
              }
              Navigator.of(context).pop({
                to_add,
              });
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: all_players.length,
        itemBuilder: (context, index) {
          final PlayerDataStats data = all_players[index];
          return ListTile(
            title: Text(data.name),
            onTap: () {
              setState(() {
                if (players[data.name] == Icons.star_border) {
                  players[data.name] = Icons.star;
                } else {
                  players[data.name] = Icons.star_border;
                }
              });
            },
            trailing: Icon(
              players[data.name],
              size: 25,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[300],
            height: 1,
            thickness: 1,
          );
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PlayerPage(
        playerstats: stats,
      ),
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
                        padding: EdgeInsets.only(top: 25, left: 10),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FavoritePlayers()));
                          },
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 25,right: 25),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      "REBOUNDS",
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
                                      stats.rebounds,
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
                                      padding: const EdgeInsets.only(left: 50),
                                      child: Text(
                                        "Per Game Averages",
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
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
