import 'package:desafio/app/modules/limit/features/extract_feature/components/eachBuy.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListBuys extends StatefulWidget {
  final List<Transaction> list;
  ListBuys(this.list);

  @override
  State<ListBuys> createState() => _ListBuysState();
}

class _ListBuysState extends State<ListBuys> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
          child: Text(
            widget.list.first.date,
            style: const TextStyle(fontSize: 16, fontFamily: 'Open Sans', fontWeight: FontWeight.bold),
          ),
        ),
        ...widget.list.map((tr) {
          return EachBuy(tr.message, tr.value, tr.portion);
        }).toList()
      ],
    );
  }
}
