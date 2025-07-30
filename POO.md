# 🏛️ Os 4 Pilares da Programação Orientada a Objetos em Dart

A Programação Orientada a Objetos (POO) é um paradigma de programação baseado em quatro pilares fundamentais. Este documento explica cada pilar com exemplos práticos em Dart.

## 📦 1. Encapsulamento

O **encapsulamento** é o princípio que permite ocultar os detalhes internos de uma classe e controlar o acesso aos seus dados através de métodos públicos.

### Exemplo em Dart:

```dart
class ContaBancaria {
  String _titular;           // Propriedade privada
  double _saldo = 0.0;       // Propriedade privada
  
  ContaBancaria(this._titular);
  
  // Getter público para acessar o saldo
  double get saldo => _saldo;
  
  // Getter público para acessar o titular
  String get titular => _titular;
  
  // Método público para depositar
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$ $valor realizado. Saldo atual: R\$ $_saldo');
    }
  }
  
  // Método público para sacar
  bool sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print('Saque de R\$ $valor realizado. Saldo atual: R\$ $_saldo');
      return true;
    }
    print('Saque não autorizado!');
    return false;
  }
}
```

**Benefícios:**
- Proteção dos dados internos
- Controle de acesso através de métodos
- Validação de dados antes de modificá-los

---

## 🧬 2. Herança

A **herança** permite que uma classe filha herde propriedades e métodos de uma classe pai, promovendo reutilização de código.

### Exemplo em Dart:

```dart
// Classe pai (superclasse)
class Veiculo {
  String marca;
  String modelo;
  int ano;
  
  Veiculo(this.marca, this.modelo, this.ano);
  
  void acelerar() {
    print('$marca $modelo está acelerando...');
  }
  
  void frear() {
    print('$marca $modelo está freando...');
  }
  
  void mostrarInfo() {
    print('Veículo: $marca $modelo ($ano)');
  }
}

// Classe filha (subclasse)
class Carro extends Veiculo {
  int numeroPortas;
  
  Carro(String marca, String modelo, int ano, this.numeroPortas) 
      : super(marca, modelo, ano);
  
  void abrirPortas() {
    print('Abrindo as $numeroPortas portas do carro');
  }
  
  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print('Número de portas: $numeroPortas');
  }
}

// Outra classe filha
class Moto extends Veiculo {
  bool temCarenagem;
  
  Moto(String marca, String modelo, int ano, this.temCarenagem) 
      : super(marca, modelo, ano);
  
  void empinar() {
    print('$marca $modelo empinando!');
  }
  
  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print('Tem carenagem: ${temCarenagem ? "Sim" : "Não"}');
  }
}
```

**Benefícios:**
- Reutilização de código
- Hierarquia lógica entre classes
- Especialização de comportamentos

---

## 🎭 3. Polimorfismo

O **polimorfismo** permite que objetos de diferentes classes sejam tratados de forma uniforme através de uma interface comum.

### Exemplo em Dart:

```dart
// Classe abstrata definindo uma interface comum
abstract class Animal {
  String nome;
  
  Animal(this.nome);
  
  void emitirSom(); // Método abstrato
  void mover();     // Método abstrato
  
  void dormir() {
    print('$nome está dormindo...');
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome faz: Au au!');
  }
  
  @override
  void mover() {
    print('$nome está correndo!');
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome faz: Miau!');
  }
  
  @override
  void mover() {
    print('$nome está caminhando silenciosamente...');
  }
}

class Passaro extends Animal {
  Passaro(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome faz: Piu piu!');
  }
  
  @override
  void mover() {
    print('$nome está voando!');
  }
}

// Função que demonstra polimorfismo
void fazerAnimaisAgirem(List<Animal> animais) {
  for (Animal animal in animais) {
    animal.emitirSom();  // Comportamento específico de cada classe
    animal.mover();      // Comportamento específico de cada classe
    animal.dormir();     // Comportamento comum herdado
    print('---');
  }
}
```

**Uso do polimorfismo:**
```dart
void main() {
  List<Animal> animais = [
    Cachorro('Rex'),
    Gato('Mimi'),
    Passaro('Piu')
  ];
  
  fazerAnimaisAgirem(animais);
}
```

**Benefícios:**
- Flexibilidade no código
- Uma interface para múltiplas implementações
- Facilita extensão e manutenção

---

## 🎯 4. Abstração

A **abstração** permite definir contratos (interfaces) sem implementação específica, focando no "o que" ao invés do "como".

### Exemplo em Dart:

```dart
// Interface abstrata
abstract class Pagavel {
  double calcularPagamento();
  void processarPagamento();
}

// Classe abstrata com implementação parcial
abstract class Funcionario implements Pagavel {
  String nome;
  String cargo;
  
  Funcionario(this.nome, this.cargo);
  
  void trabalhar() {
    print('$nome está trabalhando como $cargo');
  }
  
  void mostrarInfo() {
    print('Funcionário: $nome - Cargo: $cargo');
  }
  
  // Método abstrato - deve ser implementado pelas subclasses
  @override
  double calcularPagamento();
  
  @override
  void processarPagamento() {
    double salario = calcularPagamento();
    print('Processando pagamento de R\$ $salario para $nome');
  }
}

// Implementações concretas
class FuncionarioCLT extends Funcionario {
  double salarioMensal;
  
  FuncionarioCLT(String nome, String cargo, this.salarioMensal) 
      : super(nome, cargo);
  
  @override
  double calcularPagamento() {
    return salarioMensal;
  }
}

class FuncionarioFreelancer extends Funcionario {
  double valorHora;
  int horasTrabalhadas;
  
  FuncionarioFreelancer(String nome, String cargo, this.valorHora, this.horasTrabalhadas) 
      : super(nome, cargo);
  
  @override
  double calcularPagamento() {
    return valorHora * horasTrabalhadas;
  }
}

class FuncionarioComissionado extends Funcionario {
  double salarioBase;
  double vendas;
  double percentualComissao;
  
  FuncionarioComissionado(
    String nome, 
    String cargo, 
    this.salarioBase, 
    this.vendas, 
    this.percentualComissao
  ) : super(nome, cargo);
  
  @override
  double calcularPagamento() {
    return salarioBase + (vendas * percentualComissao / 100);
  }
}
```

**Exemplo de uso:**
```dart
void main() {
  List<Funcionario> funcionarios = [
    FuncionarioCLT('João', 'Desenvolvedor', 5000.0),
    FuncionarioFreelancer('Maria', 'Designer', 50.0, 80),
    FuncionarioComissionado('Pedro', 'Vendedor', 2000.0, 10000.0, 5.0)
  ];
  
  for (Funcionario funcionario in funcionarios) {
    funcionario.mostrarInfo();
    funcionario.trabalhar();
    funcionario.processarPagamento();
    print('---');
  }
}
```

**Benefícios:**
- Define contratos claros
- Força implementação de métodos essenciais
- Permite diferentes implementações da mesma interface

---

## 🔄 Combinando os Pilares

Na prática, os quatro pilares trabalham juntos para criar sistemas robustos e flexíveis:

```dart
abstract class Forma {
  String cor;
  
  Forma(this.cor);
  
  // Abstração - define o contrato
  double calcularArea();
  double calcularPerimetro();
  
  // Encapsulamento - método público com lógica interna
  void pintarForma(String novaCor) {
    if (novaCor.isNotEmpty) {
      cor = novaCor;
      print('Forma pintada de $cor');
    }
  }
}

// Herança - Retangulo herda de Forma
class Retangulo extends Forma {
  double _largura;   // Encapsulamento - propriedade privada
  double _altura;    // Encapsulamento - propriedade privada
  
  Retangulo(String cor, this._largura, this._altura) : super(cor);
  
  // Getters para acesso controlado (Encapsulamento)
  double get largura => _largura;
  double get altura => _altura;
  
  // Polimorfismo - implementação específica do método abstrato
  @override
  double calcularArea() => _largura * _altura;
  
  @override
  double calcularPerimetro() => 2 * (_largura + _altura);
}

class Circulo extends Forma {
  double _raio;
  
  Circulo(String cor, this._raio) : super(cor);
  
  double get raio => _raio;
  
  @override
  double calcularArea() => 3.14159 * _raio * _raio;
  
  @override
  double calcularPerimetro() => 2 * 3.14159 * _raio;
}
```

## 🎉 Conclusão

Os quatro pilares da POO em Dart proporcionam:

- **Encapsulamento**: Proteção e controle de dados
- **Herança**: Reutilização e hierarquia de código
- **Polimorfismo**: Flexibilidade e interfaces uniformes
- **Abstração**: Contratos claros e implementações específicas

Dominar estes conceitos é fundamental para escrever código Dart limpo, maintível e escalável! 🚀