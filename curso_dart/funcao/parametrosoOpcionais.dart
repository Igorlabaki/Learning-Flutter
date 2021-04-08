main() {
  formataData(1);
  formataData(1, 2);
  formataData(12, 10);
}

formataData(int dia, [int mes = 0, int ano = 0]) {
  print('$dia/$mes/$ano');
}
