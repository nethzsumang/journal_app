import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:journal_app/models/entry_model.dart';
import 'package:journal_app/state/entry.dart';
import 'package:journal_app/view/widgets/headers/h4_text_widget.dart';

final entry = Entry();

class EntryListPage extends StatefulWidget {
  const EntryListPage({super.key, required this.title});

  final String title;

  @override
  State<EntryListPage> createState() => _EntryListPageState();
}

class _EntryListPageState extends State<EntryListPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // return Observer
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Scrollbar(
          controller: _scrollController,
          child: Observer(
            builder: (_) {
              List<EntryModel> entryList = entry.entryList;
              return ListView.builder(
                itemCount: entryList.length,
                controller: _scrollController,
                itemBuilder: (context, index) {
                  final entry = entryList[index];
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
              );
            }
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.go('/add-entry'),
          child: const Icon(Icons.add)),
    );
  }
}
