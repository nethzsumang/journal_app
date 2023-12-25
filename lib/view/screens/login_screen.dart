import 'package:flutter/material.dart';
import 'package:journal_app/view/widgets/buttons/elevated_button_widget.dart';
import 'package:journal_app/view/widgets/headers/h1_text_widget.dart';
import 'package:journal_app/view/widgets/form/text_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              const H1TextWidget(text: 'Login to your account'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFieldWidget(
                  obscureText: false,
                  label: 'Username',
                  placeholder: 'Enter your username.',
                  onChanged: (value) => {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFieldWidget(
                  obscureText: true,
                  label: 'Password',
                  placeholder: 'Enter your password.',
                  onChanged: (value) => {},
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButtonWidget(
                    text: 'Login',
                    onPressed: () => {},
                  )),
            ],
          ),
        ));
  }
}
