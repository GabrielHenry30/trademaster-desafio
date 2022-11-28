import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:mobx/mobx.dart';

part 'extract_controller.g.dart';

class ExtractController = _ExtractController with _$ExtractController;

abstract class _ExtractController with Store {
  LimitServices _limitService;
  _ExtractController(this._limitService);

  // @observable
  // List<Transaction> transactions = _limitService.getListTransaction();

  @observable
  List<Transaction> allTransactions = [
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

  //retorna uma lista pronta dos extratos a serem mostrados para cada ID
  @action
  List<List<Transaction>> getExtract(String id) {
    List<Transaction> transactionsOrderById = [];
    List<Transaction> transactionsOrderByDate = [];
    List<String> dates = [];
    List<List<Transaction>> transactionsGroupByDate = [];

    transactionsOrderById = getTransactionById(id);
    dates = getDates(transactionsOrderById);
    transactionsGroupByDate = getTransactionsByDate(transactionsOrderById, dates);

    return transactionsGroupByDate;
  }

  //retorna todos os extratos
  @action
  List<Transaction> getAllExtract() {
    return allTransactions;
  }

  //retorna uma lista de transações por id
  @action
  List<Transaction> getTransactionById(String id) {
    List<Transaction> allTransactions = getAllExtract();
    List<Transaction> transactionsOrderById = [];

    allTransactions.forEach(
      ((tr) => {
            if (tr.id == id)
              {
                transactionsOrderById.add(tr),
              }
          }),
    );

    return transactionsOrderById;
  }

  //retorna uma lista de todas as datas de uma lista de transações de UM id
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

  //retorna uma lista de lista de transações agrupadas por data
  @action
  List<List<Transaction>> getTransactionsByDate(List<Transaction> listTransactionOrderById, List<String> dates) {
    List<List<Transaction>> transactionsGroupByDate = [];

    for (var date in dates) {
      List<Transaction> trByDate = [];
      for (var tr in listTransactionOrderById) {
        if (date == tr.date) trByDate.add(tr);
      }
      transactionsGroupByDate.add(trByDate);
    }

    return transactionsGroupByDate;
  }
}
