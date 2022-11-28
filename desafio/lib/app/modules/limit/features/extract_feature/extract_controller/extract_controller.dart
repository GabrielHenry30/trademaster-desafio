import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:mobx/mobx.dart';

part 'extract_controller.g.dart';

class ExtractController = _ExtractController with _$ExtractController;

abstract class _ExtractController with Store {
  LimitServices _limitService;
  _ExtractController(this._limitService);

  @observable
  List<Transaction> allTransactions = [];
  //retorna uma lista pronta dos extratos a serem mostrados para cada ID

  @action
  void setListTransaction() {
    final List<Transaction> listTransactions = _limitService.getListTransaction();
    allTransactions = listTransactions;
  }

  @action
  List<List<Transaction>> getExtract(String id) {
    List<Transaction> transactionsOrderById = [];
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
    final List<Transaction> listTransactions = _limitService.getListTransaction();
    allTransactions = listTransactions;
    return allTransactions;
  }

  //retorna uma lista de transações por id
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
