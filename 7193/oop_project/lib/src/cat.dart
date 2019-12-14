import './animal.dart';

class Cat extends Animal {
  String name;

  Cat({this.name, noise}) : super(noise: noise);
}
