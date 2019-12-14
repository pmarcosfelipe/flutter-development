class Person {
  String name;
  int age;
  double weigth;
  double heigth;

  double calculateIMC() => weigth / (heigth * heigth);

  bool calculateAge() => age >= 18;
}
