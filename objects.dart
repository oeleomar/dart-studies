class Animal {
  String tipo;
  String cor;
  int idade;

  //Construtor
  Animal(this.tipo, this.cor, this.idade);

  void dormir() {
    print('O animal $tipo está dormindo');
  }
}

void main() {
  Animal cachorro = Animal('Cachorro', 'Marrom', 5);

  print('Tipo: ${cachorro.tipo}');
  print('Cor: ${cachorro.cor}');
  print('Idade: ${cachorro.idade} anos');

  cachorro.dormir();
}
