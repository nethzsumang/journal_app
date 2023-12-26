import 'package:flutter/material.dart';

class AddEntryPage extends StatefulWidget {
  const AddEntryPage({super.key, required this.title});

  final String title;

  @override
  State<AddEntryPage> createState() => _AddEntryPageState();
}

class _AddEntryPageState extends State<AddEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Text('Add entry Page'),
    );
  }
}
