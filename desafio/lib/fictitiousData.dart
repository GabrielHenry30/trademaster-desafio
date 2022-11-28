import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';

class FictitiousData {
  final credits = [
    Credits(
      id: 'gerdau',
      maxCredit: 105690,
      usedCredit: 72463.90,
    ),
    Credits(
      id: 'unilever',
      maxCredit: 105690,
      usedCredit: 72463.90,
    ),
  ];

  List<Transaction> transactions = [
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 29',
      value: 1000.00,
      date: '29/01',
      portion: 1,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 29',
      value: 1000.00,
      date: '29/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 29',
      value: 1000.00,
      date: '29/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 28',
      value: 2000.12,
      date: '28/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 28',
      value: 8790.12,
      date: '28/01',
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
      message: 'COMPRA GERDAU LOJA 27',
      value: 9000.00,
      date: '27/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 27',
      value: 8500.00,
      date: '27/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 27',
      value: 8000.00,
      date: '27/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 27',
      value: 8000.00,
      date: '27/01',
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
      date: '28/01',
      portion: 12,
    ),
    Transaction(
      id: 'unilever',
      message: 'COMPRA UNILEVER LOJA 03',
      value: 8790.12,
      date: '27/01',
      portion: 12,
    ),
  ];
}
