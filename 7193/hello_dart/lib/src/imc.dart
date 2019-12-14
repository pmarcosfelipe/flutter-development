import 'dart:io';

calculateIMC() {
  print('Digite o seu peso: ');
  String textWeight = stdin.readLineSync();
  int weight = int.parse(textWeight);

  print('Digite a sua altura: ');
  String textheight = stdin.readLineSync();
  double height = double.parse(textheight);

  double imc = calculatingIMC(weight, height);

  printIMC(imc);
}

printIMC(double imc) {
  if (imc < 18.5) {
    print("Abaixo do Peso");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso Normal");
  } else if (imc > 25 && imc < 29.9) {
    print("Sobrepeso");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade Grau 1");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade Grau 2");
  } else {
    print("Obesidade Grau 3");
  }
}

calculatingIMC(int weight, double height) {
  return weight / (height * height);
}
