import 'package:desafio/app/modules/limit/limit_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(ModularApp(module: LimitModule(), child: WireFlowState()));

class WireFlowState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Screens',
      initialRoute: LimitModule.route,
    ).modular();
  }
}
