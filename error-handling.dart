void main() {
  try {
    print((2 / 0).toInt());
  } catch (e, stackTrace) {
    // Stack trace é opcional, mas pode ser útil para depuração é a pilha de erros
    print('Erro: $e, Stack Trace: $stackTrace');

    // Propagar o erro para cima
    // rethrow;

    throw CustomError('Erro ao realizar a operação'); // Retornar um novo erro
  }
}

class CustomError implements Exception {
  final String message;

  CustomError(this.message);

  @override
  String toString() => 'CustomError: $message';
}
