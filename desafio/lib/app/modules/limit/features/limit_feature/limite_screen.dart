import 'package:desafio/app/modules/limit/features/limit_feature/limit_controller/limit_controller.dart';
import 'package:desafio/app/modules/limit/features/limit_feature/components/cardview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LimiteScreen extends StatelessWidget {
  LimiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final credits = Provider.of<LimitController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Limites',
          style: TextStyle(
            color: Color(0xFF09A2B6),
            fontSize: 16,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
        backgroundColor: const Color(0xFFF8FAFA),
        elevation: 0,
        centerTitle: true,
      ),
      body: GestureDetector(
        child: Column(children: [
          ...credits.getCredit().map((cv) {
            return CardView(cv);
          }).toList(),
        ]),
      ),
    );
  }
}
