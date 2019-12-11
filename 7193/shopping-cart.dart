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
      print("Products: $products \n");
    } else {
      products.add(text);
      print('\x1B[2J\x1B[0;0H');
    }
  }
}
