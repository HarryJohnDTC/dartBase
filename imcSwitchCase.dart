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
    
    // Déterminer la catégorie de l'IMC
    String categorie;

    if (imc < 18.5) {
      categorie = "sous-poids";
    } else if (imc >= 18.5 && imc < 24.9) {
      categorie = "poids normal";
    } else if (imc >= 25 && imc < 29.9) {
      categorie = "surpoids";
    } else {
      categorie = "obésité";
    }

    // Utilisation de switch pour afficher le message
    switch (categorie) {
      case "sous-poids":
        print("Vous êtes en sous-poids.");
        break;
      case "poids normal":
        print("Vous avez un poids normal.");
        break;
      case "surpoids":
        print("Vous êtes en surpoids.");
        break;
      case "obésité":
        print("Vous êtes en obésité.");
        break;
      default:
        print("Catégorie inconnue.");
        break;
    }
  } else {
    print("Veuillez entrer un poids et une taille valides.");
  }
}
