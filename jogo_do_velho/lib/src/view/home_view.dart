import 'package:flutter/material.dart';

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
          child: largura > 600
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pushNamed('/jogo'),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(50)),
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 30),
                    TextButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(50)),
                      ),
                      onPressed: () => Navigator.of(context).pushNamed('/jogo'),
                      child: const Icon(
                        Icons.circle_outlined,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pushNamed('/jogo'),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(50)),
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(50)),
                      ),
                      onPressed: () => Navigator.of(context).pushNamed('/jogo'),
                      child: const Icon(
                        Icons.circle_outlined,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
