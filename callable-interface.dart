void main() {
  // Não faz sentido criar uma instância de BuscarAlunos
  // porque o método buscar é estático.
  var buscarAlunos = BuscarAlunos();
  buscarAlunos();
}

class BuscarAlunos {
  // Callable interface
  // Permite que a classe seja chamada como uma função
  void call() {
    print('David, William, Fabiano, Eleomar');
  }

  /* void buscar() {
    print('David, William, Fabiano, Eleomar');
  } */

  // Método estático
  // É possível chamar diretamente sem instanciar a classe
  static void buscar() {
    print('David, William, Fabiano, Eleomar');
  }
}
