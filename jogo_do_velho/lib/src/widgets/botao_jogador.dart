import 'package:flutter/material.dart';

class BotaoJogadorX extends StatelessWidget {
  const BotaoJogadorX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pushNamed('/jogo'),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(1),
        padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
      ),
      child: const Icon(
        Icons.close,
        size: 45,
        color: Colors.white,
      ),
    );
  }
}

class BotaoJogadorO extends StatelessWidget {
  const BotaoJogadorO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(1),
        padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
      ),
      onPressed: () => Navigator.of(context).pushNamed('/jogo'),
      child: const Icon(
        Icons.circle_outlined,
        size: 45,
        color: Colors.white,
      ),
    );
  }
}
