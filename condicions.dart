void main() {
  int idade = 18;

  /* Comparadores 
  == (igualdade)
  != (diferente)
  > (maior que)
  < (menor que)
  >= (maior ou igual a)
  <= (menor ou igual a)
  && (e lógico)
  || (ou lógico)
  ! (negação)
  is (verifica o tipo)
  is! (verifica se não é do tipo)
  in (verifica se está em uma coleção)

*/

  if (idade >= 18) {
    print("Você é maior de idade.");
  } else {
    print("Você é menor de idade.");
  }

  switch (idade) {
    case 18:
      print("Você tem 18 anos.");
      break;
    case 21:
      print("Você tem 21 anos.");
      break;
    default:
      print("Você tem uma idade diferente de 18 ou 21 anos.");
      break;
  }
}
