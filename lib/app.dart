import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal_app/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Journal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.notoSansTextTheme(),
      ),
    );
  }
}
