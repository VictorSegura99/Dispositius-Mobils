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
  String rebounds;

  PlayerDataStats(this.background, this.number,this.name,this.team,this.points,this.assists,this.rebounds);
}

final stats=PlayerDataStats(
  'assets/images/steph.jpg',
  '#30',
  'STEPHEN CURRY',
  'PG | Golden State Warriors',
  '31',
  '7.2',
  '2.3',
);