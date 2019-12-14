import 'dart:io';

import './src/person.dart';

Person person = Person();

void main(List<String> arguments) {
  print('Informe seu NOME: ');
  person.name = stdin.readLineSync();

  print('Informe sua IDADE: ');
  person.age = int.parse(stdin.readLineSync());

  print('Informe seu PESO: ');
  person.weigth = double.parse(stdin.readLineSync());

  print('Informe sua ALTURA: ');
  person.heigth = double.parse(stdin.readLineSync());
  print('----------------------------------\n');

  print('Nome: ${person.name}');
  print('Maior de Idade: ${person.calculateAge()}');
  print('IMC: ${person.calculateIMC()}');
}
