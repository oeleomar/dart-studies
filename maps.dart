void main() {
  Map<String, String> mapa = {"chave": "valor"};

  print(mapa);

  // Primeiro argumento é a chave, segundo é uma função com valor
  mapa.putIfAbsent("nova chave", () => "novo valor");
  print(mapa);

  // Outra forma de adicionar chave e valor
  mapa["outra chave"] = "outro valor";
  print(mapa);

  // Remover valores
  mapa.remove("chave");

  // Atualizar valores
  mapa.update("nova chave", (valor) => "valor atualizado");
  mapa["chave"] = "valor atualizado";

  //iterar sobre o mapa
  mapa.forEach((chave, valor) {
    print("Chave: $chave, Valor: $valor");
  });
  mapa.keys.forEach(print);
  mapa.values.forEach(print);
}
