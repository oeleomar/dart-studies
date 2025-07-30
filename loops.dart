void main() {
  //Incrementando de 1 em 1
  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
    print(i + 2);
  }

  List numero = [1, 2, 3, 4, 5];

  for (int i = 0; i < numero.length; i++) {
    print('Loop iteration: $i');
  }

  for (var i in numero) {
    print('Lista: $i');
  }

  // WHILE
  // Primeiro verifica a condição e depois executa
  int i = 0;

  while (i < 5) {
    print('Loop while: $i');
    i++;
  }

  //do while
  // Primeiro executa e depois verifica a condição
  int j = 0;
  do {
    print('Loop do while: $j');
    j++;
  } while (j < 5);
}
