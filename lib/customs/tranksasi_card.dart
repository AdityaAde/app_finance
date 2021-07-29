import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finance_app/providers/tranksasi.dart';
import 'transcation_item.dart';

class TranksasiCard extends StatefulWidget {
  final double height;
  const TranksasiCard(this.height);
  @override
  _TranksasiCardState createState() => _TranksasiCardState();
}

class _TranksasiCardState extends State<TranksasiCard> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final providerTransactions = Provider.of<Transcations>(context);

    return Positioned(
      bottom: 15,
      left: 10,
      child: SizedBox(
        width: mediaQuery.size.width * 0.94,
        height: mediaQuery.size.height * widget.height,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return AnimatedContainer(
              width: constraints.maxWidth * 0.94,
              height: constraints.maxHeight * widget.height,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: ListView.builder(
                  itemCount: providerTransactions.transcations.length,
                  itemBuilder: (context, i) {
                    return TranscationItem(
                        providerTransactions.transcations[i]);
                  }),
            );
          },
        ),
      ),
    );
  }
}
