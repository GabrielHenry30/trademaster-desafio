import 'package:desafio/app/modules/limit/features/extract_feature/components/eachBuy.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ListBuys extends StatelessWidget {
  final Transaction tr;
  ListBuys(this.tr);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
            child: Text(
              tr.date,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold),
            ),
          ),
          EachBuy(
            tr.message,
            tr.value,
            tr.portion,
          ),
        ],
      ),
    );
  }
}
