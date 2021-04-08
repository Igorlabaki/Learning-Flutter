main(List<String> args) {
  var notas = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0];
  bool Function(double) notasBoas = (double nota) => nota > 7;

  var notasBoasFn = notas.where(notasBoas);
  print(notasBoasFn);
}
