import 'package:mobx/mobx.dart';

part 'entry.g.dart';

class Entry = EntryBase with _$Entry;

abstract class EntryBase with Store {
  @observable
  List<Entry> entryList = [];

  @action
  void setEntryList(entries) {
    entryList = entries;
  }
}