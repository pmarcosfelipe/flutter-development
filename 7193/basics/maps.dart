import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condition = true;
  print('\x1B[2J\x1B[0;0H');

  while (condition) {
    print('Digite um "cadastro", "imprimir" ou "sair"');
    String command = stdin.readLineSync();
    if (command == 'sair') {
      print('Programa Finalizado');
      condition = false;
    } else if (command == 'cadastro') {
      create();
    } else if (command == 'imprimir') {
      print(cadastros);
    } else {
      print('Comando não existe');
    }
  }
}

create() {
  Map<String, dynamic> cadastro = {};

  print('Digite o seu Nome');
  cadastro['name'] = stdin.readLineSync();

  print('Digite a sua Idade');
  cadastro['age'] = stdin.readLineSync();

  print('Digite a sua Cidade');
  cadastro['city'] = stdin.readLineSync();

  print('Digite o seu Estado');
  cadastro['state'] = stdin.readLineSync();
  cadastros.add(cadastro);
}
