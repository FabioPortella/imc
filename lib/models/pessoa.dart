class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double calculaIMC() {
    double imc = _peso / (_altura * _altura);
    return imc;
  }

  String classificacaoIMC() {
    double imc = calculaIMC();
    String classificacao = "";
    switch (imc) {
      case (< 16):
        classificacao = "Magreza grave";
        break;
      case (< 17):
        classificacao = "Magreza Moderada";
        break;
      case (< 18.5):
        classificacao = "Magreza leve";
        break;
      case (< 25):
        classificacao = "Saudável";
        break;
      case (< 30):
        classificacao = "Sobrepeso";
        break;
      case (< 35):
        classificacao = "Obsidadee Grau I";
        break;
      case (< 40):
        classificacao = "Obsidade GRau II - Severa";
        break;
      case (>= 40):
        classificacao = "Obsidade GRau III - Mórbida";
        break;
      default:
        classificacao = "Altura ou peso informado são inválidos!";
    }
    return classificacao;
  }
}
