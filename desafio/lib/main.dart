import 'package:desafio/app/app_module.dart';
import 'package:desafio/app/modules/limit/features/extract_feature/extract_controller/extract_controller.dart';
import 'package:desafio/app/modules/limit/features/limit_feature/limit_controller/limit_controller.dart';
import 'package:desafio/app/modules/limit/limit_module.dart';
import 'package:desafio/app/modules/limit/services/limit_services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ModularApp(module: AppModule(), child: WireFlowState()));

class WireFlowState extends StatefulWidget {
  @override
  State<WireFlowState> createState() => _WireFlowStateState();
}

class _WireFlowStateState extends State<WireFlowState> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LimitController>(create: (_) => LimitController(LimitServices())),
        Provider<ExtractController>(create: (_) => ExtractController(LimitServices())),
      ],
      child: const MaterialApp(
        title: 'Screens',
        initialRoute: LimitModule.route,
      ).modular(),
    );
  }
}
