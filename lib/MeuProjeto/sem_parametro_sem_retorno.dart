import 'dart:io';

void calculoDeReducaoDeVida() {
  int? vidaValidade;
  int? defesaValidade;
  int? mediaDano;
  try {
    print('Informe a quantidade de vida do personagem: ');
    var vida = stdin.readLineSync();

    print('Informe sua defesa: ');
    var defesa = stdin.readLineSync();

    print('Valor do primeiro dado de ataque rolado: ');
    var dado1 = stdin.readLineSync();

    print('Valor de segundo dado de ataque rolado: ');
    var dado2 = stdin.readLineSync();

    if (dado1 != null && dado2 != null && vida != null && defesa != null) {
      var dado1Validado = int.parse(dado1);
      var dado2Validado = int.parse(dado2);

      mediaDano = dado1Validado + dado2Validado;

      defesaValidade = int.parse(defesa);
      vidaValidade = int.parse(vida);
      if (vidaValidade <= 0) {
        print('Você já esta morto');
      } else {
        // se o dano dos daods for maior que a defesa ele vai causar dano ao jogador;
        if (mediaDano > defesaValidade) {
          var danoRecebido = mediaDano - defesaValidade;

          vidaValidade = vidaValidade - danoRecebido;
          if (vidaValidade <= 0) {
            print('Guereiro abatido');
          } else {
            print('Sua vida está em $vidaValidade');
          }
        }
        // Se não levar dano, printa a vida e o aviso de não levar dano;
        else {
          print('Voce não recebe dano, sua vida está em $vidaValidade');
        }
      }
    }
    // Se não for informado as informaçõe necessárias, informa uma mensagar para o usuário de aviso;
    else {
      print('Sem todos os dados não podemor fazer os calculos');
    }
  } catch (e) {
    print(e);
  }
}
