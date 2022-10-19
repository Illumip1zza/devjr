import "dart:io";
import "dart:math";

void main() {
  print("Escolha pedra, papel ou tesoura \n");
  var jogador = 0; //registro da jogada do jogador
  String? entrada = stdin.readLineSync(); //pede a jogada
  if (entrada == "pedra") {
    jogador = 1;
  } else if (entrada == "papel") {
    jogador = 2;
  } else if (entrada == "tesoura") {
    jogador = 3;
  } else {
    print("erro");
  }
  jogador = 1;
  //Agora, a jogada do computador:
  var comp = Random().nextInt(3) + 1;
  //Comparando as jogadas:
  if (comp == jogador) {
    print("empate");
  } else if ((comp == 1 && jogador == 3) ||
      (comp == 2 && jogador == 1) ||
      (comp == 3 && jogador == 2)) {
    print("PERDEU!");
  } else {
    print("GANHOU!");
  }
}
