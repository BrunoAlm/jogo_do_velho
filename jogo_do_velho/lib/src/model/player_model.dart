import 'package:flutter/cupertino.dart';

class PlayerModel with ChangeNotifier {
  int jogadorX = 0;
  int jogadorO = 1;
  int jogadorAtual = 1;

  // PlayerModel(this.jogadorX, this.jogadorO, this.jogadorAtual);

  int jogar(int jogador) {
    jogadorAtual = jogador;
    notifyListeners();
    return jogadorAtual;
  }
}
