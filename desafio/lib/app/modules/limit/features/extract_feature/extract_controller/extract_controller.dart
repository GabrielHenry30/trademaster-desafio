import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/models/transaction.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'extract_controller.g.dart';

class ExtractController = _ExtractController with _$ExtractController;

abstract class _ExtractController with Store {
  final LimitServices _limitService;
  _ExtractController(this._limitService);

  @observable
  List<Transaction> transactions = [];

  // @action

}
