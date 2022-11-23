// ignore_for_file: prefer_const_constructors

import 'package:desafio/app/other/models/credits.dart';
import 'package:desafio/app/modules/limit/features/extract_feature/extrato.screen.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  // final id;
  final Credits credits;
  const CardView(this.credits);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return ExtratoScreen(credits.id);
        }),
      ), 
      child: Container(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
        padding: EdgeInsets.all(16),
        color: Color(0xFFFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  ('assets/image/${credits.id}.png'),
                  width: 84,
                  height: 24,
                ),
                Image.asset(
                  ('assets/image/nextArrow.png'),
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'R\$ ${(credits.usedCredit).toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                  ),
                ),
                Text(
                  'R\$ ${(credits.maxCredit - credits.usedCredit).toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            LinearProgressIndicator(
              color: Color.fromRGBO(245, 245, 245, 1),
              
              value: 30,
              minHeight: 8,
              // ignore: prefer_const_literals_to_create_immutables
              backgroundColor: Colors.black,
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Limite utilizado",
                  style: TextStyle(fontSize: 12, fontFamily: 'Opens Sans'),
                ),
                Text(
                  "Limite disponível",
                  style: TextStyle(fontSize: 12, fontFamily: 'Opens Sans'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
