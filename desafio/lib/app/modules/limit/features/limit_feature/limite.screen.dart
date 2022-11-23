// ignore_for_file: prefer_const_constructors
import 'package:desafio/app/other/models/credits.dart';
import 'package:desafio/app/other/screens/components/limite.dart/cardview.dart';
import 'package:flutter/material.dart';
import '../../../../other/datas/fictitiousData.dart';

class LimiteScreen extends StatelessWidget {
  LimiteScreen({super.key});

  final _limitsCards = [
    Credits(
      id: 'gerdau',
      maxCredit: 105690,
      usedCredit: 72463.90,
    ),
    Credits(
      id: 'unilever',
      maxCredit: 105690,
      usedCredit: 33555.50,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Limites',
          style: TextStyle(
            color: Color(0xFF09A2B6),
            fontSize: 16,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
        backgroundColor: Color(0xFFF8FAFA),
        elevation: 0,
        centerTitle: true,
      ),
      body: GestureDetector(
        child: Column(children: [
          ..._limitsCards.map((cv) {
            return CardView(cv);
          }).toList(),
        ]),
      ),
    );
  }
}
