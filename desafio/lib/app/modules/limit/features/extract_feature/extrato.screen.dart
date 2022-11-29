// ignore_for_file: prefer_const_constructors
import 'package:desafio/app/modules/limit/features/extract_feature/components/listBuy.dart';
import 'package:desafio/app/modules/limit/features/extract_feature/extract_controller/extract_controller.dart';
import 'package:desafio/app/modules/limit/limit_module.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio/fictitiousData.dart';
import 'package:provider/provider.dart';

class ExtratoScreen extends StatefulWidget {
  final String id;
  ExtratoScreen(this.id);

  @override
  _ExtratoScreenState createState() => _ExtratoScreenState();
}

class _ExtratoScreenState extends ModularState<ExtratoScreen, ExtractController> {
  @override
  Widget build(BuildContext context) {
    final transactions = Provider.of<ExtractController>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Modular.to.navigate(LimitModule.route),
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
      body: Observer(
          builder: ((_) => Column(
                children: [
                  ...transactions.getExtract(widget.id).map((transaction) {
                    return ListBuys(transaction);
                  }).toList()
                ],
              ))),
    );
  }
}
