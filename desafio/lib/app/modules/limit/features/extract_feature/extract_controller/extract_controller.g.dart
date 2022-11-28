// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extract_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExtractController on _ExtractController, Store {
  late final _$allTransactionsAtom =
      Atom(name: '_ExtractController.allTransactions', context: context);

  @override
  List<Transaction> get allTransactions {
    _$allTransactionsAtom.reportRead();
    return super.allTransactions;
  }

  @override
  set allTransactions(List<Transaction> value) {
    _$allTransactionsAtom.reportWrite(value, super.allTransactions, () {
      super.allTransactions = value;
    });
  }

  late final _$_ExtractControllerActionController =
      ActionController(name: '_ExtractController', context: context);

  @override
  List<List<Transaction>> getExtract(String id) {
    final _$actionInfo = _$_ExtractControllerActionController.startAction(
        name: '_ExtractController.getExtract');
    try {
      return super.getExtract(id);
    } finally {
      _$_ExtractControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<Transaction> getAllExtract() {
    final _$actionInfo = _$_ExtractControllerActionController.startAction(
        name: '_ExtractController.getAllExtract');
    try {
      return super.getAllExtract();
    } finally {
      _$_ExtractControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<Transaction> getTransactionById(String id) {
    final _$actionInfo = _$_ExtractControllerActionController.startAction(
        name: '_ExtractController.getTransactionById');
    try {
      return super.getTransactionById(id);
    } finally {
      _$_ExtractControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> getDates(List<Transaction> transactionsOrderById) {
    final _$actionInfo = _$_ExtractControllerActionController.startAction(
        name: '_ExtractController.getDates');
    try {
      return super.getDates(transactionsOrderById);
    } finally {
      _$_ExtractControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<List<Transaction>> getTransactionsByDate(
      List<Transaction> listTransactionOrderById, List<String> dates) {
    final _$actionInfo = _$_ExtractControllerActionController.startAction(
        name: '_ExtractController.getTransactionsByDate');
    try {
      return super.getTransactionsByDate(listTransactionOrderById, dates);
    } finally {
      _$_ExtractControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allTransactions: ${allTransactions}
    ''';
  }
}
