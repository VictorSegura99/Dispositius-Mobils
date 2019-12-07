import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  String logo;
  double points;
  double assists;
  double rebounds;
  IconData icon=Icons.star_border;

  PlayerDataStats(this.background, this.number,this.name,this.team, this.logo, this.points,this.assists,this.rebounds, this.icon);

    PlayerDataStats.fromJson(var json)
    : name=json['Name'],
    background=json['Background'],
    number=json['Number'],
    team=json['Team'],
    logo=json['Logo'],
    points=json['Points'],
    assists=json['Assists'],
    rebounds=json['Rebounds'];
}