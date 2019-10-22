class Path{
String steph;
String blackbox;
String whitebox;
String logo;
String menu;

Path(this.steph,this.blackbox,this.whitebox, this.logo, this.menu);

}

final path=Path(  
  'assets/images/steph.jpg',
  'assets/images/blackbox.jpg',
  'assets/images/whitebox.jpg',
  'assets/images/logo.png',
  'assets/images/menu.jpg'
);


class Stats{
  String number;
  String name;
  String team;
  String points;
  String assists;
  String steals;
  String last_match;

  Stats(this.number,this.name,this.team,this.points,this.assists,this.steals, this.last_match);
}

final stats=Stats(
  '#30',
  'STEPHEN CURRY',
  'PG | Golden State Warriors',
  '51',
  '12',
  '4',
  'Last Saturday vs. Rockets',
);