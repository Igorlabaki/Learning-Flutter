main() {
  formataData(dia: 12, ano: 1990, mes: 12);
}

formataData({int dia = 0, int mes = 0, int ano = 1970}) {
  print('$dia/$mes/$ano');
}
