import 'package:finance_app/customs/headers.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/customs/tranksasi_card.dart';

class MainScreen extends StatelessWidget {
  final double _height = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          'Personal Finance',
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Header(),
            ],
          ),
          TranksasiCard(_height)
        ],
      ),
    );
  }
}
