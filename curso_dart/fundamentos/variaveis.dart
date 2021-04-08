main() {
  var nome = 'igor tem ';
  var idade = 30;

  print(nome.runtimeType);
  print(idade.runtimeType);

  print(nome is String);
  print(idade is int);

  print(nome + idade.toString() + ' anos');
}
