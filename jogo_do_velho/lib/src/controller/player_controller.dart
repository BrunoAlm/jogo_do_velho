import 'package:flutter/cupertino.dart';

class PlayerController extends ChangeNotifier {
  String jogadorX = 'X';
  String jogadorO = 'O';
  String jogadorAtual = '';

  void jogador(String jogadorSelecionado) {
    jogadorSelecionado == jogadorX ? jogadorAtual = 'X' : jogadorAtual = 'O';
    notifyListeners();
  }
}
