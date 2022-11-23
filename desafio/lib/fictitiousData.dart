import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';

class FictitiousData {
  final _creditView = [
    Credits(
      id: 'Gerdau',
      maxCredit: 105690,
      usedCredit: 72463.90,
    ),
    Credits(
      id: 'Unilever',
      maxCredit: 105690,
      usedCredit: 72463.90,
    )
  ];

  final Transactions = [
    Transaction(
      id: 'Gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '29/01',
      portion: 10,
    ),
    Transaction(
      id: 'Gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '27/01',
      portion: 11,
    ),
    Transaction(
      id: 'Gedau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '28/01',
      portion: 12,
    ),
    Transaction(
      id: 'Unilever',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '29/01',
      portion: 8,
    ),
    // Transaction(
    //   id: 'Unilever',
    //   message: 'COMPRA Unilever LOJA 03',
    //   value: 8790.12,
    //   date: '03/01',
    //   portion: 12,
    // ),
    // Transaction(
    //   id: 'Unilever',
    //   message: 'COMPRA Unilever LOJA 03',
    //   value: 8790.12,
    //   date: '15/01',
    //   portion: 12,
    // ),
  ];
}
