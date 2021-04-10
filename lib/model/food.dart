import 'dart:math';

import 'package:flutter/cupertino.dart';

class Food{
  int id;
  int categoryId;
  String name;
  String urlImg;
  Duration timeToCompleted;
  List<String> component;
  Complexity complexity;
  Food({
    @required this.categoryId,
    @required this.name,
    this.urlImg,
    this.timeToCompleted,
    this.component,
    this.complexity}){
    this.id = Random().nextInt(100);
  }

}

enum Complexity{
  Simple,
  Medium,
  Hard
}