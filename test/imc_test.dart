import 'package:test/test.dart';
import 'package:imc/models/pessoa.dart'; 

void main() {
  group('Pessoa', () {
    test('calculaIMC', () {

      final pessoa = Pessoa("Alice", 60.0, 1.70);
      final esperado = 60.0 / (1.70 * 1.70);
      expect(pessoa.calculaIMC(), equals(esperado));
    });

    test('classificacaoIMC', () {
      final pessoa = Pessoa("Bob", 80.0, 1.75);
      final imc = 80.0 / (1.75 * 1.75);
      String classificacao = "";

      if (imc < 16) {
        classificacao = "Magreza grave";
      } else if (imc < 17) {
        classificacao = "Magreza Moderada";
      } else if (imc < 18.5) {
        classificacao = "Magreza leve";
      } else if (imc < 25) {
        classificacao = "Saudável";
      } else if (imc < 30) {
        classificacao = "Sobrepeso";
      } else if (imc < 35) {
        classificacao = "Obsidadee Grau I";
      } else if (imc < 40) {
        classificacao = "Obsidade GRau II - Severa";
      } else {
        classificacao = "Obsidade GRau III - Mórbida";
      }

      expect(pessoa.classificacaoIMC(), equals(classificacao));
    });
  });
}

