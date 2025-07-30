abstract class Automovel {
  String marca;
  String modelo;
  int ano;

  // Construtor
  Automovel(this.marca, this.modelo, this.ano);

  // Método abstrato
  void ligar();

  // Método concreto
  void desligar() {
    print('O automóvel $marca $modelo está desligado');
  }
}

class Carro extends Automovel {
  int numeroDePortas;

  // Construtor
  Carro(String marca, String modelo, int ano, this.numeroDePortas)
    : super(marca, modelo, ano);

  // Implementação do método abstrato
  @override
  void ligar() {
    print('O carro $marca $modelo está ligado');
  }
}

void main() {
  Carro meuCarro = Carro('Toyota', 'Corolla', 2020, 4);

  print('Marca: ${meuCarro.marca}');
  print('Modelo: ${meuCarro.modelo}');
  print('Ano: ${meuCarro.ano}');
  print('Número de portas: ${meuCarro.numeroDePortas}');

  meuCarro.ligar();
  meuCarro.desligar();
}
