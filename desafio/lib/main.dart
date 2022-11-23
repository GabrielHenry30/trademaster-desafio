import 'app/other/datas/fictitiousData.dart';
import 'package:flutter/material.dart';
import 'app/modules/limit/features/limit_feature/limite.screen.dart';
import 'app/modules/limit/features/extract_feature/extrato.screen.dart';

void main() => runApp(const WireFlow());

class _WireFlowState extends State<WireFlow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screens',
      initialRoute: '/limitescreen',
      routes: {
        '/limitescreen': ((context) => LimiteScreen()),
      },
    );
  }
}

class WireFlow extends StatefulWidget {
  const WireFlow({super.key});

  @override
  _WireFlowState createState() {
    return _WireFlowState();
  }
}
