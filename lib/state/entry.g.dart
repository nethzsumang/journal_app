// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Entry on EntryBase, Store {
  late final _$entryListAtom =
      Atom(name: 'EntryBase.entryList', context: context);

  @override
  List<Entry> get entryList {
    _$entryListAtom.reportRead();
    return super.entryList;
  }

  @override
  set entryList(List<Entry> value) {
    _$entryListAtom.reportWrite(value, super.entryList, () {
      super.entryList = value;
    });
  }

  late final _$EntryBaseActionController =
      ActionController(name: 'EntryBase', context: context);

  @override
  void setEntryList(dynamic entries) {
    final _$actionInfo =
        _$EntryBaseActionController.startAction(name: 'EntryBase.setEntryList');
    try {
      return super.setEntryList(entries);
    } finally {
      _$EntryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
entryList: ${entryList}
    ''';
  }
}
