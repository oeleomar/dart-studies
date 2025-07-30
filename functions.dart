void main() {
  incrementingLoop();
  print(soma(2, 3));
}

void incrementingLoop() {
  // Incrementando de 1 em 1
  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
    print(i + 2);
  }
}

double soma(double a, double b) => a + b;

double subtracao(double a, double b) {
  return a - b;
}
