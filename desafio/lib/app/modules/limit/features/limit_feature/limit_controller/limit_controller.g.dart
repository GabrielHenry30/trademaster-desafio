// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LimitController on _LimitController, Store {
  late final _$credtAtom =
      Atom(name: '_LimitController.credt', context: context);

  @override
  List<Credits> get credt {
    _$credtAtom.reportRead();
    return super.credt;
  }

  @override
  set credt(List<Credits> value) {
    _$credtAtom.reportWrite(value, super.credt, () {
      super.credt = value;
    });
  }

  @override
  String toString() {
    return '''
credt: ${credt}
    ''';
  }
}
