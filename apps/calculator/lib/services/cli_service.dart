import 'package:calculator/utils/write_console.dart';

class CliService {
  bool _isRunning = true;

  bool get isRunning => _isRunning;

  set isRunning(bool value) => _isRunning = value;

  void start() {
    writeConsole();
    _isRunning = false;
  }
}
