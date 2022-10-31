// ignore_for_file: prefer_const_constructors

import 'package:desafio/models/transaction.dart';
import 'package:desafio/screens/components/extrato.dart/listBuy.dart';
import 'package:desafio/screens/limite.screen.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class ExtratoScreen extends StatelessWidget {
  final id;
  ExtratoScreen(this.id);

  final _allTransactions = [
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '27/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '28/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '29/01',
      portion: 12,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return LimiteScreen();
            }),
          ),
          child: Image.asset(
            ('assets/image/backArrow.png'),
            width: 24,
            height: 24,
          ),
        ),
        title: Text(
          'Extrato',
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
      body: Column(
        children: [
          ..._allTransactions.map((transaction) {
            return ListBuys(transaction);
          })
        ],
      ),
    );
  }
}
