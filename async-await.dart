void main() async {
  // Tipagem Future utilizado para lidar com operações assíncronas
  // Exemplo: buscar CEP por nome de rua
  // async e await são usados para lidar com operações assíncronas de forma mais legível

  //Primeira forma:
  Future<String> cep = getCepByName('RUA FULANO');
  late String cepValue;
  // Usando o then para lidar com o resultado
  cep.then((value) {
    cepValue = value;
  });
  //Gera um erro:
  // print(cepValue); // cepValue ainda não foi definido

  // Solução: usar o await para esperar a conclusão da Future
  cepValue = await getCepByName('RUA FULANO');
  print(cepValue); // Agora funciona corretamente
}

// Definindo que uma função é assíncrona
Future<String> getCepByName(String name) {
  return Future.value('12345-678');
}
