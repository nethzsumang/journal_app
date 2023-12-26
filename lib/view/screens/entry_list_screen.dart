import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:journal_app/models/entry_model.dart';
import 'package:journal_app/view/widgets/headers/h4_text_widget.dart';

class EntryListPage extends StatefulWidget {
  const EntryListPage({super.key, required this.title});

  final String title;

  @override
  State<EntryListPage> createState() => _EntryListPageState();
}

class _EntryListPageState extends State<EntryListPage> {
  final ScrollController _scrollController = ScrollController();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Scrollbar(
          controller: _scrollController,
          child: ListView.builder(
            itemCount: sampleEntries.length,
            controller: _scrollController,
            itemBuilder: (context, index) {
              final entry = sampleEntries[index];
              return Column(
                children: [
                  Dismissible(
                    key: Key(entry.entryId.toString()),
                    background: Container(
                      color: Colors.green,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Icon(Icons.pin),
                        ),
                      ),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Icon(Icons.delete),
                        ),
                      ),
                    ),
                    confirmDismiss: (direction) async {
                      if (direction == DismissDirection.startToEnd) {
                        setState(() {
                          // flavors[index] = flavor.copyWith(isFavorite: !flavor.isFavorite);
                        });
                        return false;
                      } else {
                        bool delete = true;
                        final snackbarController =
                            ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Deleted entry'),
                            action: SnackBarAction(
                                label: 'Undo', onPressed: () => delete = false),
                          ),
                        );
                        await snackbarController.closed;
                        return delete;
                      }
                    },
                    child: ListTile(
                      title: H4TextWidget(text: entry.title),
                      subtitle: Text(entry.content),
                    ),
                  ),
                  const Divider(color: Colors.black54)
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.go('/add-entry'),
          child: const Icon(Icons.add)),
    );
  }
}
