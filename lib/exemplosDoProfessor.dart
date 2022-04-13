import 'dart:io';

void salarioPositivoSimNao() {
  print('Informe o seu salário para validar o saldo: ');
  //Crio uma variavel para receber uma string vom o valor que o usuário digitou
  var salario = stdin.readLineSync();

  print('Informe o valor de desconto em porcentagem: ');
  var desconto = stdin.readLineSync();

  if (salario != null && desconto != null) {
    // Adiciono o cinal de exclamação para dizer que sei que pode ser nulo e assumo o risco
    double salarioValidado = double.parse(salario);
    double descontoValidado = double.parse(desconto);

    var saldo = salarioValidado - descontoValidado;

    if (saldo < 0) {
      print('Você está com saldo negativo de $saldo');
    } else {
      print('Seu saldo é de $saldo');
    }
  } else {
    print('Insira todos os valores para podermos calcular');
  }
}

void prontParaAMissao() {
  // conjunto de comandos que juntamos (encapsulamos) e podemos chamar para executar algo;
  // show , stdin.readLineSync,

  // O que é top Level Function
  // Uma função que podemos fazer

  print("Bom dia, qual o seu nome: ");
  var nome = stdin.readLineSync();

  print("Informe a sua idade");
  var idade = stdin.readLineSync();

  if (idade != null) {
    int idadeVerificada = int.parse(idade);

    if (idadeVerificada < 18) {
      print("Você é uma criança ainda $nome");
    } else {
      print("Você já é crescido, está pronto para a missão");
    }
  } else {
    print("Insira a idade para receber sua missão");
  }
}

// - sem retorno e sem parametro
// - sem retorno e com parametro
// - com retorn e sem parametro
// - com retorn e com parametro

//sem retorno e com parametro
void sow() {
  verificaNota(1, 4);
}

void verificaNota(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  print(media >= 6 ? 'aprovado' : 'reprovado');
}

// retorno sem parametro

String varificarAprovacao() {
  print('informe a nota 1: ');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('forme a nota 2: ');
  double nota2 = double.parse(stdin.readLineSync()!);

  double medida = (nota1 + nota2) / 2;

  if (medida >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}





// com retorno e com parametro.
void show2() {
  var resultado = verificaAprovacao(6, 5);
  print('O aluno está $resultado');
}

String verificaAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return (media >= 6) ? 'aprovacao' : 'reprovado';
}
