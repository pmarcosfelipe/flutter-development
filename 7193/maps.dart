import 'dart:io';

Map<String, dynamic> cadastro = {};

main() {
  // Map<String, dynamic> maps = {
  //   'name': 'Marcos Felipe',
  //   'idade': 27,
  //   'city': 'Maringa',
  //   'state': 'Parana'
  // };

  print('Digite o seu Nome');
  String name = stdin.readLineSync();
  cadastro['name'] = name;

  print('Digite a sua Idade');
  String age = stdin.readLineSync();
  cadastro['age'] = age;

  print('Digite a sua Cidade');
  String city = stdin.readLineSync();
  cadastro['city'] = city;

  print('Digite o seu Estado');
  String state = stdin.readLineSync();
  cadastro['state'] = state;

  print(cadastro);
}
