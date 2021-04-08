main(List<String> args) {
  //Dynamic aceita trocar o tipo da variavel
  dynamic x = 'Igor';
  x = 2;

  print(x);

  //Lista
  List aprovados = ['Ana', 'Antonio'];

  print(aprovados);
  print(aprovados.elementAt(0));
  print(aprovados[1]);

  //Map

  Map telefones = {
    'Joao': '123456789',
    'Joao': '444444444',
    'Jorge': '123456789',
  };

  print(telefones);
  print(telefones['Joao']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  //Set

  var times = {'Sao Paulo', 'Corinthians', 'Santos', 'Palmeiras'};
  print(times.add('Portuguesa'));
  print(times.contains('Sao Paulo'));
  print(times.first);
  print(times.length);
}
