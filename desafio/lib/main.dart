import 'datas/fictitiousData.dart';
import 'package:flutter/material.dart';
import 'screens/limite.screen.dart';
import 'screens/extrato.screen.dart';

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
