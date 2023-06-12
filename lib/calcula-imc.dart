import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double calcularIMC() {
    return peso / (altura * altura);
  }
}

void main() {
  try {
    print("Digite seu nome: ");
    String nome = stdin.readLineSync()!;
    print("Digite seu peso (em kg): ");
    double peso = double.parse(stdin.readLineSync()!);
    print("Digite sua altura (em metros): ");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    double imc = pessoa.calcularIMC();
    print("$nome, seu IMC é $imc");
  } catch (e) {
    print("Erro: $e");
  }
}
