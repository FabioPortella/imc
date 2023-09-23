import 'dart:io';

import 'package:imc/console_utils.dart';
import 'package:imc/exception/nome_invalido_excepton.dart';
import 'package:imc/models/pessoa.dart';

void execute() {
  print("Bem vindo ao sistema - Desafio CALCULADORA IMC");
  String nome = ConsoleUtils.lerStringComTexto("Digite seu nome:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Anônimo";
    print(NomeInvalidoException);
    print(nome);
  } catch (e) {
    print(e);
    exit(0);
  }
  double? peso = 0;
  double? altura = 0;
  var pessoa = Pessoa(nome, peso, altura);

  do {
    peso = ConsoleUtils.lerDoubleComTexto("Informe o seu peso");
    if (peso != null) {
      pessoa.setPeso(peso);
    }
  } while (peso == null || peso == 0);

  do {
    altura = ConsoleUtils.lerDoubleComTexto("Informe sua altura");
    if (altura != null) {
      pessoa.setAltura(altura);
    }
  } while (altura == null || altura == 0);

  print("Usuário: ${pessoa.getNome()}");
  print("Seu indice IMC é : ${pessoa.calculaIMC().toStringAsFixed(2)}");
  print("Classificação do IMC ${pessoa.classificacaoIMC()}");
}
