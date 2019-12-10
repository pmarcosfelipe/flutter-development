main() {
  for (int x = 0; x < 10; x++) {
    print("Rodou $x vezes!");
  }

  bool condition = true;
  int x = 0;
  while (condition) {
    print("Rodou $x vezes!");
    if (x > 9) {
      condition = false;
    }
    x++;
  }
}
