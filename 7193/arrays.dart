import 'dart:io';

main() {
  var nome = [];

  bool condicao = true;

  while (condicao) {
    print('Digite o nome: ');
    String text = stdin.readLineSync();

    if (text == 'sair') {
      print('Programa finalizado!');
      condicao = false;
    } else {
      nome.add(text);
    }

    print(nome);
    print('\n');
  }
}
