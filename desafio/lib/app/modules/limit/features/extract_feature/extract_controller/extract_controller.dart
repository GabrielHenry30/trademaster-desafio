import 'dart:async';

import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:mobx/mobx.dart';

part 'extract_controller.g.dart';

class ExtractController = _ExtractController with _$ExtractController;

abstract class _ExtractController with Store {
  final LimitServices _limitService;
  _ExtractController(this._limitService);

  @observable
  List<Transaction> allTransactions = [
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 27',
      value: 1000.00,
      date: '27/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 27',
      value: 2000.12,
      date: '27/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 27',
      value: 8790.12,
      date: '27/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 9000.00,
      date: '28/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8500.00,
      date: '28/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 29',
      value: 8000.00,
      date: '29/01',
      portion: 11,
    ),
    Transaction(
      id: 'unilever',
      message: 'COMPRA UNILEVER LOJA 03',
      value: 8790.12,
      date: '29/01',
      portion: 12,
    ),
    Transaction(
      id: 'unilever',
      message: 'COMPRA UNILEVER LOJA 03',
      value: 8790.12,
      date: '29/01',
      portion: 12,
    ),
    Transaction(
      id: 'unilever',
      message: 'COMPRA UNILEVER LOJA 03',
      value: 8790.12,
      date: '27/01',
      portion: 12,
    ),
    Transaction(
      id: 'unilever',
      message: 'COMPRA UNILEVER LOJA 03',
      value: 8790.12,
      date: '28/01',
      portion: 12,
    ),
  ];

  @action
  List<List<Transaction>> getExtract(String id) {
    List<Transaction> transactionsOrderById = [];
    List<String> dates = [];
    List<List<Transaction>> transactionsOrderByDate = [];

    //constroi uma lista de transações por id
    allTransactions.forEach(
      ((tr) => {
            if (tr.id == id)
              {
                transactionsOrderById.add(tr),
              }
          }),
    );

    //constroi uma lista de datas da lista de transações por id
    dates = getDates(transactionsOrderById);

    //constroi uma lista de listas de transacoes agrupadas por data
    transactionsOrderByDate = getTransactionsByDate(transactionsOrderById, dates);

    return transactionsOrderByDate;
  }

  @action
  List<Transaction> getAllExtract() {
    return allTransactions;
  }

  @action
  List<String> getDates(List<Transaction> transactionsOrderById) {
    List<String> dates = [];

    for (var tr in transactionsOrderById) {
      {
        if (dates.isNotEmpty) {
          if (!dates.any((date) => date == tr.date)) {
            dates.add(tr.date);
          }
        }
        if (dates.isEmpty) {
          dates.add(tr.date);
        }
      }
    }
    return dates;
  }

  List<List<Transaction>> getTransactionsByDate(List<Transaction> listTransactionOrderById, List<String> dates) {
    List<List<Transaction>> transactionsOrderByDate = [];

    for (var date in dates) {
      List<Transaction> transactionGroupByDate = [];
      for (var tr in listTransactionOrderById) {
        if (date == tr.date) transactionGroupByDate.add(tr);
      }
      transactionsOrderByDate.add(transactionGroupByDate);
    }

    return transactionsOrderByDate;
  }
}
