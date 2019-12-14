import 'package:hello_dart/src/calculate-age.dart';
import 'package:hello_dart/src/imc.dart';
import 'package:hello_dart/src/maps.dart';
import 'package:hello_dart/src/shopping-cart.dart';

void main(List<String> arguments) {
  if (arguments[0] == 'calcular-idade') {
    calculateAge();
  } else if (arguments[0] == 'carrinho-compras') {
    shoppingCart();
  } else if (arguments[0] == 'calcular-imc') {
    calculateIMC();
  } else if (arguments[0] == 'maps') {
    maps();
  } else {
    print('Esse programa não existe!');
  }
}
