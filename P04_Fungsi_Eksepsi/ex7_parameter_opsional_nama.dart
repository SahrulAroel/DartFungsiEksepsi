import 'dart:io';

void printString(String s, {int? n, bool? newLine}) {
  if (n == null) {
    n = 1;
  }
  for (int i = 0; i < n; i++) {
    if (newLine == null) {
      stdout.write('${i + 1}. $s\t');
    } else {
      stdout.writeln('${i + 1}. $s');
    }
  }
}

void main(List<String> args) {
  print('Satu Argumen');
  printString('Dart');

  print('\nDua Argumen dengan newLine bernilai null:');
  printString('Dart', n: 3);

  print('\nDua argumen dengan n bernilai null: ');
  printString('Dart', newLine: true);

  print('\nTiga Argumen');
  printString('Dart', n: 3, newLine: true);
}
