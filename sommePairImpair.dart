import 'dart:io';

void main() {
  int sommePair = 0, sommeImpair = 0;
  for (var i = 1; i < 101; i++) {
    stdout.write("${i} ");
    if (i % 2 == 0) {
      sommePair += i;
    } else {
      sommeImpair += i;
    }
  }

  print("\nSomme des nombres pairs entre 1 et 100 est $sommePair \n" +
  "Somme des nombres impairs entre 1 et 100 est $sommeImpair");
}
