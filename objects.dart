//Para uma propriedade de um objeto se tornar privado é necessário utilizar o prefixo _ (underline) no nome da propriedade.
//Para uma propriedade de um objeto se tornar pública é necessário não utilizar o prefixo _ (underline) no nome da propriedade.
//Para uma propriedade de um objeto se tornar protegida é necessário utilizar o prefixo _ (underline) no nome da propriedade
// e a palavra-chave protected antes do nome da propriedade.
//Para uma propriedade de um objeto se tornar estática é necessário utilizar a palavra-chave static antes do nome da propriedade.
//Para uma propriedade de um objeto se tornar final é necessário utilizar a palavra-chave final antes do nome da propriedade.
//Para uma propriedade de um objeto se tornar constante é necessário utilizar a palavra-chave const antes do nome da propriedade.
//Para uma propriedade de um objeto se tornar abstrata é necessário utilizar a palavra-chave abstract antes
// do nome da propriedade.
//Para uma propriedade de um objeto se tornar dinâmica é necessário utilizar a palavra-chave dynamic antes do nome da propriedade.
//Para uma propriedade de um objeto se tornar opcional é necessário utilizar a palavra-chave optional antes
// do nome da propriedade.
//Para uma propriedade de um objeto se tornar nomeada é necessário utilizar a palavra-chave named antes do nome da propriedade.
//Para uma propriedade de um objeto se tornar obrigatória é necessário utilizar a palavra-chave required antes do nome da propriedade.

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
