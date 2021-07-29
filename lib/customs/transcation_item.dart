import 'package:finance_app/providers/tranksasi.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TranscationItem extends StatelessWidget {
  final Transcation transcation;

  const TranscationItem(this.transcation);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: 70,
      child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: transcation.color,
                borderRadius: BorderRadius.circular(12)),
            alignment: Alignment.center,
            child: Icon(
              transcation.iconData,
              size: 20,
              color: Colors.white,
            ),
          ),
          title: Text(transcation.category),
          subtitle: Text(transcation.title),
          trailing: Text(NumberFormat.currency(locale: 'en', decimalDigits: 0)
              .format(transcation.value))),
    );
  }
}
