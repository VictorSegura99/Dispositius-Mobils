class AppAssetsPath{
String blackbox;
String whitebox;
String logo;

AppAssetsPath(this.blackbox,this.whitebox, this.logo);

}

final path=AppAssetsPath(
  'assets/images/blackbox.jpg',
  'assets/images/whitebox.jpg',
  'assets/images/logo.png',
);


class PlayerDataStats{
  String background;
  String number;
  String name;
  String team;
  String points;
  String assists;
  String steals;
  String last_match;

  PlayerDataStats(this.background, this.number,this.name,this.team,this.points,this.assists,this.steals, this.last_match);
}

final stats=PlayerDataStats(
  'assets/images/steph.jpg',
  '#30',
  'STEPHEN CURRY',
  'PG | Golden State Warriors',
  '51',
  '12',
  '4',
  'Last Saturday vs. Rockets',
);