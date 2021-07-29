import 'package:finance_app/customs/charts.dart';
import 'package:finance_app/models/expanse.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  static List<charts.Series<Expanse, String>> _series = [
    charts.Series<Expanse, String>(
        id: 'Expanse',
        domainFn: (Expanse expanse, _) {
          return expanse.category;
        },
        measureFn: (Expanse expanse, _) {
          return expanse.value;
        },
        labelAccessorFn: (Expanse expanse, _) {
          return NumberFormat.currency(locale: 'en', decimalDigits: 0)
              .format(expanse.value);
        },
        colorFn: (Expanse expanse, _) =>
            charts.ColorUtil.fromDartColor(expanse.color),
        data: [
          Expanse('Meals', 50.99, Color(0xFF40BAD5)),
          Expanse('Games', 70.31, Color(0xFFE08505B)),
          Expanse('entertainment', 24.20, Color(0xFFFE91CA)),
          Expanse('Gifts', 34.99, Color(0xFFF6D743)),
          Expanse('Business', 144.99, Color(0xFFF57B51)),
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: mediaQuery.size.height * 0.4,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            child: ExpanseChart(_series, true),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shadowColor: Colors.black,
                  elevation: 20,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: 130,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Add Transcation",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shadowColor: Colors.black,
                  elevation: 20,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: 100,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Reports",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Transactions",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
