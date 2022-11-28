import 'package:desafio/app/modules/limit/features/extract_feature/components/eachBuy.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListBuys extends StatelessWidget {
  final List<Transaction> list;
  ListBuys(this.list);

  @override
  Widget build(BuildContext context) {
    return
        // Observer(
        //   builder: (_) =>
        Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
          child: Text(
            list.first.date,
            style: const TextStyle(fontSize: 16, fontFamily: 'Open Sans', fontWeight: FontWeight.bold),
          ),
        ),
        ...list.map((tr) {
          return EachBuy(tr.message, tr.value, tr.portion);
        }).toList()
      ],
      // ),
    );
  }
}
