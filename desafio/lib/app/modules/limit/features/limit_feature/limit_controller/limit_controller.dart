import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

part 'limit_controller.g.dart';

class LimitController = _LimitController with _$LimitController;

abstract class _LimitController with Store {
  final LimitServices _limitService;
  _LimitController(this._limitService);

  @observable
  List<Credits> credits = [
    Credits(
      id: 'gerdau',
      maxCredit: 105690,
      usedCredit: 72463.90,
    ),
    Credits(
      id: 'unilever',
      maxCredit: 105690,
      usedCredit: 72463.90,
    )
  ];

  @action
  List<Credits> getCredit() {
    return credits;
  }
}