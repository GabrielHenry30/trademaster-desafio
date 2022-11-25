// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limit_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LimitController on _LimitController, Store {
  late final _$creditsAtom =
      Atom(name: '_LimitController.credits', context: context);

  @override
  List<Credits> get credits {
    _$creditsAtom.reportRead();
    return super.credits;
  }

  @override
  set credits(List<Credits> value) {
    _$creditsAtom.reportWrite(value, super.credits, () {
      super.credits = value;
    });
  }

  late final _$_LimitControllerActionController =
      ActionController(name: '_LimitController', context: context);

  @override
  List<Credits> getCredit() {
    final _$actionInfo = _$_LimitControllerActionController.startAction(
        name: '_LimitController.getCredit');
    try {
      return super.getCredit();
    } finally {
      _$_LimitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
credits: ${credits}
    ''';
  }
}
