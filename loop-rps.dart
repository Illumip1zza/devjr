import "dart:io";
import "dart:math";

void main() {
  var continuar = 1;
  while (continuar == 1) {
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
      break;
    }
    jogador = 1;
    //Agora, a jogada do computador:
    var comp = Random().nextInt(3) + 1;
    //Printar a jogada do computador:
    if (comp == 1) {
      print("O computador jogou pedra");
    } else if (comp == 2) {
      print("O computador jogou papel");
    } else if (comp == 3) {
      print("O computador jogou tesoura");
    } else {
      print("erro");
    }
    //Comparando as jogadas:
    if (comp == jogador) {
      print("EMPATE");
    } else if ((comp == 1 && jogador == 3) ||
        (comp == 2 && jogador == 1) ||
        (comp == 3 && jogador == 2)) {
      print("PERDEU!");
    } else {
      print("GANHOU!");
    }
    //verificar se o jogar qr continuar
    print("Quer continuar jogando? (y/n) \n");
    String? resposta = stdin.readLineSync();
    if (resposta == "n") {
      continuar = 0;
    } else if (resposta != "y" && resposta != "n") {
      print("ERRO");
    }
  }
}
