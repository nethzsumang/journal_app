import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:journal_app/view/widgets/buttons/elevated_button_widget.dart';
import 'package:journal_app/view/widgets/headers/h1_text_widget.dart';
import 'package:journal_app/view/widgets/headers/h2_text_widget.dart';
import 'package:journal_app/view/widgets/buttons/outlined_button_widget.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key, required this.title});

  final String title;

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  String username = '';
  String password = '';

  void setUsername(String username) {
    this.username = username;
  }

  void setPassword(String password) {
    this.password = password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const H1TextWidget(text: 'Speak your mind.'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButtonWidget(
                  text: 'Create account',
                  onPressed: () => {},
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(20),
                  child: Divider(color: Colors.black)),
              const H2TextWidget(text: 'Already have an account?'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: OutlinedButtonWidget(
                  text: 'Sign in',
                  onPressed: () => context.go('/login'),
                ),
              )
            ],
          ),
        ));
  }
}
