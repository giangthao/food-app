import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'category.dart';

class Food{
  int id = 0;
  String name;
  String urlName;
  Duration duration;
  Complexity complexity;
  List<String> ingredients = [];

  int categoryId;

  Food({
    required this.name,
    required this.urlName,
    required this.duration,
    required this.complexity,
    required this.ingredients,
    required this.categoryId
  }){
     this.id = Random().nextInt(1000);
  }
}

enum Complexity {
  Simple,
  Medium,
  Hard
}