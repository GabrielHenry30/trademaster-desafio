import 'package:desafio/app/modules/limit/models/credits.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:mobx/mobx.dart';
part 'limit_controller.g.dart';

class LimitController = _LimitController with _$LimitController;

abstract class _LimitController with Store {
  final LimitServices _limitService;
  _LimitController(this._limitService);

  @observable
  List<Credits> credits = [];

  @action
  List<Credits> getCredit() {
    final List<Credits> listCredit = _limitService.getListCredit();
    credits = listCredit;
    return credits;
  }
}
