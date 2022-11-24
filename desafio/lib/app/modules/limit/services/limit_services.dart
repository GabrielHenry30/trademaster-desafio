import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/fictitiousData.dart';
import 'package:flutter/material.dart';

class LimitServices {
  List<Transaction> getExtract(List<Transaction> allTransactions, String id) {
    List<Transaction> transactionsList = [];

    allTransactions.map((tr) => {
          if (tr.id == id) {transactionsList.add(tr)}
        });

    return transactionsList;
  }
}
