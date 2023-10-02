import 'package:app_teste_imc/classes/pessoa.dart';

class CalcularIMC {
  double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }

  String classificarIMC(double imc) {
    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc >= 16 && imc < 17) {
      return 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Saudável';
    } else if (imc >= 25 && imc < 30) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obesidade grau 1';
    } else if (imc >= 35 && imc < 40) {
      return 'Obesidade grau 2 (servera)';
    } else if (imc >= 40 && imc < 100) {
      return 'Obesidade Grau 3';
    } else {
      return 'Cuide-se';
    }
  }
}



/* import 'dart:convert';
import 'dart:io';

import 'package:app_teste_imc/transacao.dart';

// ignore: camel_case_types
class entradaDados extends transacao {
  String lerNome(String texto) {
    return nome;
  }

  double lerPeso(String peso) {
    peso = stdin.readLineSync(encoding: utf8) ?? "";
    return double.parse(peso);
  }

  double lerAltura(double altura) {
    var altura = stdin.readLineSync(encoding: utf8);
    return double.parse(altura ?? "");
  }
}
/*  */ */