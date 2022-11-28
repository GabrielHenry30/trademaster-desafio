import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/fictitiousData.dart';

class LimitServices {
  List<Credits> credits = FictitiousData().credits;
  List<Transaction> transactions = FictitiousData().transactions;

  List<Credits> getListCredit() {
    return credits;
  }

  List<Transaction> getListTransaction() {
    return transactions;
  }
}
