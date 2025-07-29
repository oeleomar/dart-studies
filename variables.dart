// ignore_for_file: unused_local_variable

void main() {
  String nome = "João";
  int idade = 30;
  double altura = 1.75;
  bool estudante = true;
  var cidade = "São Paulo";
  //cidade = 123; //Isso causaria um erro, pois 'cidade' é inferido como String
  const pi = 3.14;

  dynamic variavelFlexivel = "Pode ser qualquer tipo";
  variavelFlexivel = 42; // Isso é válido, pois 'dynamic' permite qualquer tipo
}
