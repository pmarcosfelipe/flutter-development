import 'dart:io';

main() {
  List<String> nomes = [];

  bool condicao = true;

  while (condicao) {
    print('Digite o nome: ');
    String text = stdin.readLineSync();

    if (text == 'sair') {
      print('Programa finalizado!');
      condicao = false;
    } else {
      nomes.add(text);
    }

    print(nomes);
    print('\n');
  }
}
