import 'package:desafio/app/modules/limit/features/limit_feature/limit_controller/limit_controller.dart';
import 'package:desafio/app/modules/limit/limit_module.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => LimitServices()),
    Bind.singleton((i) => LimitController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(LimitModule.route, module: LimitModule()),
  ];
}
