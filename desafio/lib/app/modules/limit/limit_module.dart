import 'package:desafio/app/modules/limit/features/extract_feature/extrato.screen.dart';
import 'package:desafio/app/modules/limit/features/limit_feature/limit_controller.dart';
import 'package:desafio/app/modules/limit/features/limit_feature/limite_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LimitModule extends Module {
  static const route = '/';
  static const extractRoute = 'extrato';
  static const extractCompleteRoute = '$route$extractRoute';

  @override
  final List<Bind> binds = [
    // Bind((i) => LimitController)
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(route, child: (_, args) => LimiteScreen()),
    ChildRoute(extractCompleteRoute, child: (_, args) => ExtratoScreen(args))
  ];
}
