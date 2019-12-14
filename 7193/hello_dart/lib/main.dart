void main(List<String> arguments) {
  print('Arguments: $arguments');
  if (arguments[0] == 'estudo') {
    print('ESTUDO');
  } else if (arguments[0] == 'imprimir') {
    print('EXECUTANDO IMPRESSÃO');
  } else {
    return;
  }
}
