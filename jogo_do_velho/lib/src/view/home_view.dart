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
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.indigo,
          height: altura,
          width: largura,
          child: Center(
            child: largura > 600
                ? Row(
                    children: const [
                      BotaoJogadorX(),
                      SizedBox(width: 30),
                      BotaoJogadorO()
                    ],
                  )
                : Column(
                    children: const [
                      BotaoJogadorX(),
                      SizedBox(height: 30),
                      BotaoJogadorO()
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
