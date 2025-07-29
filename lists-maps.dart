void main () {
  //Sem definir o tipo, pode ter vários tipos de dados
  List cores = ["Vermelho", "Verde", "Azul"];
  print("Cores: $cores");

  //Definindo o tipo da lista como String
  List<String> frutas = ["Maçã", "Banana", "Laranja"];
  
  // Adicionando elementos à lista
  frutas.add("Uva");
  // Adicionando em um indice específico
  frutas.insert(1, "Manga");
  // Removendo um elemento da lista
  frutas.remove("Banana");
  // Removendo o último elemento da lista
  frutas.removeLast();
  // Verificando se a lista contém um elemento
  bool temLaranja = frutas.contains("Laranja");
  //Tamanho da lista
  int tamanhoFrutas = frutas.length;

  print("Frutas: $frutas");


  //Mapas (Dicionários)
  Map usuario = {"nome": "Eleomar", "idade": 25, "cidade": "Cuiabá"};
  print("Usuário: $usuario");

  //imprimindo um valor específico
  print("Nome do usuário: ${usuario['nome']}");

  //Mudar o valor de uma chave
  usuario['idade'] = 26;
  // Adicionando uma nova chave-valor
  usuario['profissao'] = "Programador";
  // Removendo uma chave-valor
  usuario.remove('cidade');
  // Tamanhando o mapa
  int tamanho = usuario.length;
  
  // Definindo o tipo do mapa
  Map<int, String> usuario = {1: "Eleomar", 2: "João", 3: "Cuiabá"};

}