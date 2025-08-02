import 'dart:io';

void cleanConsole() {
  try {
    if (Platform.isWindows) {
      // Clear console for Windows
      Process.runSync('cls', [], runInShell: true);
    } else {
      // Clear console for Unix-based systems (Linux, macOS)
      Process.runSync('clear', [], runInShell: true);
    }
  } catch (e) {
    print('Erro ao limpar o console');
  }
}
