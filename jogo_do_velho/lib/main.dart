import 'package:flutter/cupertino.dart';
import 'package:jogo_do_velho/src/model/player_model.dart';
import 'package:provider/provider.dart';

import 'src/meu_app.dart';

main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PlayerModel(),
      child: const MeuApp(),
    ),
  );
}
