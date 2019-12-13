import 'dart:io';

main() {
  List<String> products = [];
  bool condition = true;

  while (condition) {
    print('Adicione um produto: ');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('Exit Shopping Cart!');
      condition = false;
    } else if (text == 'imprimir') {
      for (var i = 0; i < products.length; i++) {
        print("Item $i: ${products[i]} \n");
      }
    } else if (text == 'remover') {
      print('Qual item deseja remover?');
      for (var i = 0; i < products.length; i++) {
        print("Item $i: ${products[i]} \n");
      }
      int item = int.parse(stdin.readLineSync());
      products.removeAt(item);
      print('Item removido!');
    } else {
      products.add(text);
      print('\x1B[2J\x1B[0;0H');
    }
  }
}
