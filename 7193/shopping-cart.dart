import 'dart:io';

List<String> products = [];

main() {
  bool condition = true;

  while (condition) {
    print('Adicione um produto: ');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('Exit Shopping Cart!');
      condition = false;
    } else if (text == 'imprimir') {
      imprimir();
    } else if (text == 'remover') {
      remover();
    } else {
      products.add(text);
      print('\x1B[2J\x1B[0;0H');
    }
  }
}

imprimir() {
  for (var i = 0; i < products.length; i++) {
    print("Item $i: ${products[i]} \n");
  }
}

remover() {
  print('Qual item deseja remover?');
  imprimir();
  int item = int.parse(stdin.readLineSync());
  products.removeAt(item);
  print('Item removido!');
}
