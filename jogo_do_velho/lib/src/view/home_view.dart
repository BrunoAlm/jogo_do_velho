import 'package:flutter/material.dart';
import 'package:jogo_do_velho/src/widgets/botao_jogador.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text(
          'Escolha seu jogador:',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 3,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.indigo,
          height: altura,
          width: largura,
          child: Center(
            child: largura > 600
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const BotaoJogadorX(),
                      const SizedBox(width: 30),
                      BotaoJogadorO()
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const BotaoJogadorX(),
                      const SizedBox(height: 30),
                      BotaoJogadorO()
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
