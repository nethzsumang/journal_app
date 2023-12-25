import 'package:flutter/material.dart';
import 'package:journal_app/view/widgets/buttons/elevated_button_widget.dart';
import 'package:journal_app/view/widgets/headers/h1_text_widget.dart';
import 'package:journal_app/view/widgets/form/text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String name = '';
  String email = '';
  String username = '';
  String password = '';
  String retypePassword = '';

  void setName(String name) {
    this.name = name;
  }

  void setEmail(String email) {
    this.email = email;
  }

  void setUsername(String username) {
    this.username = username;
  }

  void setPassword(String password) {
    this.password = password;
  }

  void setRetypePassword(String retypePassword) {
    this.retypePassword = retypePassword;
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
              const H1TextWidget(text: 'Create a new account'),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFieldWidget(
                  obscureText: false,
                  label: 'Name',
                  placeholder: 'Enter your name.',
                  onChanged: (value) => setName(value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFieldWidget(
                  obscureText: false,
                  label: 'Username',
                  placeholder: 'Enter your username.',
                  onChanged: (value) => setUsername(value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFieldWidget(
                  obscureText: false,
                  label: 'Email',
                  placeholder: 'Enter your email.',
                  onChanged: (value) => setEmail(value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFieldWidget(
                  obscureText: true,
                  label: 'Password',
                  placeholder: 'Enter your password.',
                  onChanged: (value) => setPassword(value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFieldWidget(
                  obscureText: true,
                  label: 'Retype Password',
                  placeholder: 'Retype your password.',
                  onChanged: (value) => setRetypePassword(value),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButtonWidget(
                    text: 'Register',
                    onPressed: () => {},
                  )),
            ],
          ),
        ));
  }
}
