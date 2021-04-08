main(List<String> args) {
  int a = 2;

  int Function(int, int) soma1 = (x, y) => x + y;
  int Function(int, int) soma2 = somaFn;
  var soma3 = ([x, y]) => x + y;

  print(soma1(2, 3));
  soma2(2, 3);
  soma3(2);
}

int somaFn(int a, int b) {
  return a + b;
}
