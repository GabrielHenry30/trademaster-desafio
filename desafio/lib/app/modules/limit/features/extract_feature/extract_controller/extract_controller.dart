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
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '27/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '28/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '28/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '27/01',
      portion: 10,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '28/01',
      portion: 11,
    ),
    Transaction(
      id: 'gerdau',
      message: 'COMPRA GERDAU LOJA 03',
      value: 8790.12,
      date: '28/01',
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
  List<Transaction> getExtract(String id) {
    List<Transaction> transactions = [];

    allTransactions.forEach(
      ((element) => {
            if (element.id == id) transactions.add(element),
          }),
    );

    return transactions;
  }

  @action
  List<Transaction> getAllExtract() {
    return allTransactions;
  }
}
