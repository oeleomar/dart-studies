import 'dart:convert';

void main() {
  // Da biblioteca dart:convert importamos jsonEncode e jsonDecode
  // jsonEncode converte um objeto Dart em uma string JSON
  // jsonDecode converte uma string JSON em um objeto Dart

  String json = '''
  {
    "nome": "Eleomar Dorneles",
    "idade": 25,
    "habilidades": ["programação", "escrita", "ensino"]
  }
  ''';
  print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson);
  // Trabalhando com listas dentro de MAPS
  print(resultJson["habilidades"][0]); // Saída: programação

  //Objeto virar JSON

  Map mapa = {
    "nome": "Eleomar Dorneles",
    "idade": 25,
    "habilidades": ["programação", "escrita", "ensino"],
  };

  String toJson = jsonEncode(mapa);

  print(toJson);
}
