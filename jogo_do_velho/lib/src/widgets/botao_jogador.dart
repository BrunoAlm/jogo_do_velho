import 'package:flutter/material.dart';
import 'package:jogo_do_velho/src/controller/player_controller.dart';
import 'package:flutter/foundation.dart';

class BotaoJogadorX extends StatefulWidget {
  const BotaoJogadorX({Key? key}) : super(key: key);

  @override
  State<BotaoJogadorX> createState() => _BotaoJogadorXState();
}

class _BotaoJogadorXState extends State<BotaoJogadorX> {
  final PlayerController controller = PlayerController();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        controller.addListener(() {
          controller.jogador('X');
        });
        Navigator.of(context).pushNamed('/jogo');
      },
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(1),
        padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
      ),
      child: const Icon(
        Icons.close,
        size: 50,
        color: Colors.white,
      ),
    );
  }
}

class BotaoJogadorO extends StatelessWidget {
  final PlayerController controller = PlayerController();

  BotaoJogadorO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(1),
        padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
      ),
      onPressed: () {
        controller.addListener(() {
          controller.jogador('X');
        });
        Navigator.of(context).pushNamed('/jogo');
      },
      child: const Padding(
        padding: EdgeInsets.all(3.0),
        child: Icon(
          Icons.circle_outlined,
          size: 45,
          color: Colors.white,
        ),
      ),
    );
  }
}
