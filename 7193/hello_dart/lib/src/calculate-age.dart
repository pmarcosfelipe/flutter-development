import 'dart:io';

calculateAge() {
  print("Digite uma idade: ");
  var idade = int.parse(stdin.readLineSync());

  if (idade >= 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }
}
