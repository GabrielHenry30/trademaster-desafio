// ignore_for_file: prefer_const_constructors
import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/features/limit_feature/components/cardview.dart';
import 'package:flutter/material.dart';
import '../../../../../fictitiousData.dart';

class LimiteScreen extends StatelessWidget {
  LimiteScreen({super.key});

  final _credits = FictitiousData().credits;

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
          ..._credits.map((cv) {
            return CardView(cv);
          }).toList(),
        ]),
      ),
    );
  }
}
