import 'dart:io';

void main() {
  print("Entrer un nombre entier entre 1 et 10, 1 et 10 inclus : ");
  String? nombreEnString = stdin.readLineSync();
  
  if (nombreEnString != null) {
    try {
      int nombre = int.parse(nombreEnString);    
      if (nombre >= 1 && nombre <= 10) {
            for (var i = 1; i <= 10; i++) {
              print("$nombre * $i = ${nombre * i}");
            }
      } else {
            print("$nombre n'est pas entre 1 et 10");
      }
    } catch (e) {
      print("Erreur : Veuillez entrer un nombre entier valide.");
    }

  }else{
    print("Vous n'avez pas entré de nombre");
  }
        
}
