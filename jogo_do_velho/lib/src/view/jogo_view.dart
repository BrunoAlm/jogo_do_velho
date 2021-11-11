import 'package:flutter/material.dart';
import 'package:jogo_do_velho/src/model/player_model.dart';
import 'package:provider/provider.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var jogador = PlayerModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<PlayerModel>(
          builder: (context, jogadorAtual, child) =>
              Text('Vez de ${PlayerModel.jogadorAtual}'),
        ),
        // title: const Text('Jogo da Velha',
        //     style: TextStyle(fontSize: 30, fontFamily: 'Arial')),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
            label: const Text('Novo Jogo'),
          ),
        ],
      ),
    );
  }
}
