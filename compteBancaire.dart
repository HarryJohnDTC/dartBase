import 'dart:io';

void main() {
  clearConsole();
  Map<String, dynamic> compteBancaire = {
    'solde': 0.0,
  };

  while (true) {
    print('\nMenu :');
    print('1. Déposer de l\'argent');
    print('2. Retirer de l\'argent');
    print('3. Afficher le solde');
    print('4. Quitter');

    String? choix = stdin.readLineSync();

    switch (choix) {
      case '1':
        // Déposer de l'argent
        print('Entrez le montant à déposer :');
        double montantDepot = double.parse(stdin.readLineSync()!);
        deposer(compteBancaire, montantDepot);
        break;
      case '2':
        // Retirer de l'argent
        print('Entrez le montant à retirer :');
        double montantRetrait = double.parse(stdin.readLineSync()!);
        retirer(compteBancaire, montantRetrait);
        break;
      case '3':
        // Afficher le solde
        afficherSolde(compteBancaire);
        break;
      case '4':
        // Quitter
        print('Au revoir !');
        return;
      default:
        print('Choix invalide. Veuillez réessayer.');
    }
  }
}

// Fonction pour déposer de l'argent
void deposer(Map<String, dynamic> compte, double montant) {
  clearConsole();
  if (montant > 0) {
    compte['solde'] += montant;
    print('Vous avez déposé \${montant}.Ar');
  } else {
    print('Le montant doit être positif.');
  }
}

// Fonction pour retirer de l'argent
void retirer(Map<String, dynamic> compte, double montant) {
  clearConsole();
  if (montant > 0) {
    if (montant <= compte['solde']) {
      compte['solde'] -= montant;
      print('Vous avez retiré \$${montant}.');
    } else {
      print('Fonds insuffisants. Solde actuel : \$${compte['solde']}.');
    }
  } else {
    print('Le montant doit être positif.');
  }
}

// Fonction pour afficher le solde
void afficherSolde(Map<String, dynamic> compte) {
  clearConsole();
  print('Le solde actuel est : ${compte['solde']}. Ar');
}

void clearConsole() {
  stdout.write('\x1B[2J\x1B[0;0H'); // Efface l'écran et place le curseur en haut à gauche
}
