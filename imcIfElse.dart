import 'dart:io';

void main() {
  print("Entrez votre poids (en kg) : ");
  String? poidsEnString = stdin.readLineSync();
  
  print("Entrez votre taille (en cm) : ");
  String? tailleEnString = stdin.readLineSync();
  
  if (poidsEnString != null && tailleEnString != null) {
    double poids = double.parse(poidsEnString);
    
    // Conversion de la taille en mètres
    double taille = double.parse(tailleEnString) / 100;

    // Calcul de l'IMC
    double imc = poids / (taille * taille);

    // Affichage du résultat selon l'IMC
    if (imc < 18.5) {
      print("Vous êtes en sous-poids.");
    } else if (imc >= 18.5 && imc < 24.9) {
      print("Vous avez un poids normal.");
    } else if (imc >= 25 && imc < 29.9) {
      print("Vous êtes en surpoids.");
    } else {
      print("Vous êtes en obésité.");
    }
  } else {
    print("Veuillez entrer un poids et une taille valides.");
  }
}
