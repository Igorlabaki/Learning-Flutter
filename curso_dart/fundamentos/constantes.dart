import 'dart:io';

main(List<String> args) {
  // Area da circunferencia = PI * raio * raio
  const PI = 3.14;

  stdout.write('Informe o raio: ');
  String entradaDoUsuario = stdin.readLineSync()!;
  final raio = double.parse(entradaDoUsuario);
  final area = PI * raio * raio;

  print('O valor do raio e: ' + raio.toString());
  print('O valor do area e: ' + area.toString());
}
