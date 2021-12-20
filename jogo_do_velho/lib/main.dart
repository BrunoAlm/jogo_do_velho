import 'package:flutter/material.dart';
import 'package:jogo_do_velho/src/controller/player_controller.dart';
import 'package:provider/provider.dart';
import 'src/meu_app.dart';

main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PlayerController()),
          // Provider(create: (context) => SomeOtherClass()),
        ],
        child: const MeuApp(),
      ),
    );
