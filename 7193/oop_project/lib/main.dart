import './src/person.dart';

void main(List<String> arguments) {
  Person person = Person('Marcos', 27, 'Masculino');

  print(person.name);
  print(person.age);
  print(person.gender);
}
