import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/fictitiousData.dart';

class LimitServices {
  List<Credits> getListCredit() {
    return FictitiousData().credits;
  }

  List<Transaction> getListTransaction() {
    return FictitiousData().transactions;
  }
}
