import 'package:flutter/material.dart';

import 'view/home_view.dart';
import 'view/jogo_view.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            accentColor: Colors.red[300],
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
          '/jogo': (context) => const Jogo(),
        });
  }
}
