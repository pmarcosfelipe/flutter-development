import './src/person.dart';
import './src/cat.dart';

void main(List<String> arguments) {
  Cat cat = Cat(name: 'Ju', noise: 'miau');

  print('Gato ${cat.name} faz ${cat.noise}');
}
