import 'package:flutter/material.dart';

class Transcation {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  Transcation(
      {@required this.id,
      @required this.title,
      @required this.value,
      @required this.category,
      @required this.iconData,
      @required this.color});
}

class Transcations with ChangeNotifier {
  List<Transcation> _transcations = [
    Transcation(
        id: 1,
        title: 'Birthday',
        value: 30.1,
        category: 'Gifts',
        iconData: Icons.card_giftcard,
        color: Colors.yellow),
    Transcation(
        id: 2,
        title: 'Dinner',
        value: 50.3,
        category: 'Meals',
        iconData: Icons.fastfood,
        color: Colors.blueAccent),
    Transcation(
        id: 3,
        title: 'Video Games',
        value: 120.1,
        category: 'Games',
        iconData: Icons.games,
        color: Colors.greenAccent),
    Transcation(
        id: 4,
        title: 'Books',
        value: 45.1,
        category: 'Entertainment',
        iconData: Icons.casino,
        color: Colors.pink),
    Transcation(
        id: 5,
        title: 'Softwares',
        value: 30.1,
        category: 'Business',
        iconData: Icons.work,
        color: Colors.orange),
  ];

  List<Transcation> get transcations {
    return _transcations;
  }
}
