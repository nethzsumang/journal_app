import 'package:mobx/mobx.dart';

import '../models/entry_model.dart';

part 'entry.g.dart';

final sampleEntries = [
  EntryModel(entryId: 1, title: 'Entry 1', content: 'Entry 1 content'),
  EntryModel(entryId: 2, title: 'Entry 2', content: 'Entry 2 content'),
  EntryModel(entryId: 3, title: 'Entry 3', content: 'Entry 3 content'),
  EntryModel(entryId: 4, title: 'Entry 4', content: 'Entry 4 content'),
  EntryModel(entryId: 5, title: 'Entry 5', content: 'Entry 5 content'),
  EntryModel(entryId: 6, title: 'Entry 6', content: 'Entry 6 content'),
  EntryModel(entryId: 7, title: 'Entry 7', content: 'Entry 7 content'),
  EntryModel(entryId: 8, title: 'Entry 8', content: 'Entry 8 content'),
  EntryModel(entryId: 9, title: 'Entry 9', content: 'Entry 9 content'),
  EntryModel(entryId: 10, title: 'Entry 10', content: 'Entry 10 content'),
  EntryModel(entryId: 11, title: 'Entry 11', content: 'Entry 11 content'),
  EntryModel(entryId: 12, title: 'Entry 12', content: 'Entry 12 content'),
];

class Entry = EntryBase with _$Entry;

abstract class EntryBase with Store {
  @observable
  List<EntryModel> entryList = sampleEntries;

  @action
  void setEntryList(List<EntryModel> entries) {
    entryList = entries;
  }
}