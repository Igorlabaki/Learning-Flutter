E devolveSegundoElemento<E>(List lista) {
  return lista.length > 2 ? lista[1] : null;
}

main() {
  List lista = [1, 2, 3, 4, 5, 6, 7];

  int segundoElemento = devolveSegundoElemento(lista);

  print(segundoElemento);
}
