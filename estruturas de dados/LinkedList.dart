class Node<T> {
  /*
   
  Representa um nó individual na lista encadeada.
  
  Define uma classe genérica chamada Node. 
  <T> significa que ela pode armazenar qualquer tipo de dado (int, String, etc.).
  Esta linha declara uma variável 'data' que armazenará o valor real do nó (ex: o número 10, a string "Maçã"). 
  Seu tipo é T (o tipo genérico).
  Esta linha declara uma variável 'next' que é uma referência (ponteiro) para o PRÓXIMO nó na sequência. 
  O '?' indica que pode ser nulo (null), o que acontece no último nó da lista.
  Este é o construtor do Node. Quando você cria um Node, você passa o 'data' para ele. 
  O 'next' é inicialmente nulo por padrão.

  */

  T data;
  Node<T>? next;

  Node(this.data);
}

class LinkedList<T> {
  Node<T>? head;

  bool get isEmpty => head == null;

  void add(T data) {
    final newNode = Node(data);
    if (isEmpty) {
      head = newNode;
      return;
    }
    Node<T>? current = head;
    while (current?.next != null) {
      current = current?.next;
    }
    current?.next = newNode;
  }

  // Adiciona um elemento no início da lista (O(1))
  void addFirst(T data) {
    final newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  // Remove o primeiro elemento da lista (O(1))
  void removeFirst() {
    if (isEmpty) {
      print('A lista está vazia. Nada para remover.');
      return;
    }
    head = head?.next;
  }

  // Remove um elemento por valor (O(n))
  void remove(T data) {
    if (isEmpty) return;

    if (head?.data == data) {
      head = head?.next;
      return;
    }

    Node<T>? current = head;
    while (current?.next != null && current?.next?.data != data) {
      current = current?.next;
    }

    if (current?.next?.data == data) {
      current?.next = current.next?.next;
    } else {
      print('Elemento $data não encontrado na lista.');
    }
  }

  // Imprime todos os elementos da lista
  void printList() {
    if (isEmpty) {
      print('Lista vazia.');
      return;
    }
    Node<T>? current = head;
    String result = '';
    while (current != null) {
      result += '${current.data} -> ';
      current = current.next;
    }
    print('${result}NULL');
  }

  // Busca um elemento na lista (O(n))
  bool contains(T data) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == data) {
        return true;
      }
      current = current.next;
    }
    return false;
  }
}

void main() {
  final minhaLista = LinkedList<String>();

  print('Criando lista encadeada:');
  minhaLista.add('Maçã');
  minhaLista.add('Banana');
  minhaLista.add('Laranja');
  minhaLista.printList(); // Saída: Maçã -> Banana -> Laranja -> NULL

  print('\nAdicionando "Pera" no início:');
  minhaLista.addFirst('Pera');
  minhaLista.printList(); // Saída: Pera -> Maçã -> Banana -> Laranja -> NULL

  print('\nRemovendo o primeiro elemento:');
  minhaLista.removeFirst();
  minhaLista.printList(); // Saída: Maçã -> Banana -> Laranja -> NULL

  print('\nRemovendo "Banana":');
  minhaLista.remove('Banana');
  minhaLista.printList(); // Saída: Maçã -> Laranja -> NULL

  print('\nRemovendo "Abacaxi" (não existe):');
  minhaLista.remove(
    'Abacaxi',
  ); // Saída: Elemento Abacaxi não encontrado na lista.
  minhaLista.printList(); // Saída: Maçã -> Laranja -> NULL

  print(
    '\nA lista contém "Maçã"? ${minhaLista.contains('Maçã')}',
  ); // Saída: A lista contém "Maçã"? true
  print(
    'A lista contém "Uva"? ${minhaLista.contains('Uva')}',
  ); // Saída: A lista contém "Uva"? false
}
