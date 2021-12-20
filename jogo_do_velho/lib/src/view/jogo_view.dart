import 'package:flutter/material.dart';
import 'package:jogo_do_velho/src/controller/player_controller.dart';
import 'package:provider/provider.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  final PlayerController controller = PlayerController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Consumer<PlayerController>(
          builder: (context, controller, child) {
            return Text("Jogador: ${controller.jogadorAtual}");
          },
        ),
        // title: Text('Jogador ${controller.jogadorAtual}',
        //     style: const TextStyle(fontSize: 30, fontFamily: 'Arial')),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
            label: const Text(
              'Novo Jogo',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
