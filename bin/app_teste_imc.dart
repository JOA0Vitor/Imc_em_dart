import 'dart:io';
import 'package:app_teste_imc/classes/pessoa.dart';
import 'package:app_teste_imc/classes/enConsole.dart';

void main() {
  print("Bem-vindo à calculadora de IMC");

  stdout.write('Qual é seu nome? ');
  String nome = stdin.readLineSync() ?? '';

  stdout.write('Quanto você pesa (em kg)? ');
  double peso = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Qual é sua altura (em metros)? ');
  double altura = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  CalcularIMC calculadora = CalcularIMC();
  double imc = calculadora.calcularIMC(peso, altura);
  String classificacao = calculadora.classificarIMC(imc);

  print('Nome: $nome');
  print('Peso: $peso kg');
  print('Altura: $altura metros');
  print('IMC: ${imc.toStringAsFixed(2)}');
  print('Classificação: $classificacao');
}

  // var imc = IMC();
  // var resul = imc.calculcarIMC(pessoa);

  // print("Seu IMC é: $resul");
  // var classificacao = imc.classificacaoIMC(resul);



  // nome = stdin.readLineSync(encoding: utf8);
  //var peso = stdin.readLineSync(encoding: utf8);
  //var altura = stdin.readLineSync(encoding: utf8);
