class Person {
  String name;
  int age;
  double weigth;
  double heigth;

  double calculateIMC() {
    double imc = weigth / (heigth * heigth);

    return imc;
  }

  bool calculateAge() {
    return age >= 18 ? true : false;
  }
}
