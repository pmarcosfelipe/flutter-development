import './src/person.dart';

void main(List<String> arguments) {
  Person person = Person(name: 'Marcos', age: 27, gender: 'Masculino');

  print(person.name);
  print(person.age);
  print(person.gender);
}
