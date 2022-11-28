// ignore: file_names
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class EachBuy extends StatelessWidget {
  final message;
  final value;
  final portion;
  EachBuy(this.message, this.value, this.portion);

  @override
  Widget build(BuildContext context) {
    return
        // Observer(
        // builder: (_) =>
        Container(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.3),
                    child: Text(
                      'R\$  ${value}',
                      style: const TextStyle(color: Color.fromRGBO(139, 139, 139, 1), fontFamily: 'Open Sans', fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset('assets/image/arrow2.png'),
                ],
              )
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                'Em ${portion} parcelas',
                style: const TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
              ),
            ],
          ),
        ],
      ),
      // ),
    );
  }
}
