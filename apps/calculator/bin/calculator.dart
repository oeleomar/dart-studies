import 'package:calculator/calculator.dart';

void main(List<String> arguments) {
  CliService cliService = CliService();

  while (cliService.isRunning) {
    cliService.start();
  }
}
