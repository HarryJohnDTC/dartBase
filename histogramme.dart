void main() {
 
  List<String> fruits = ["apple", "banana", "apple", "orange", "banana", "apple"];

 
  List<String> uniqueFruit = [];
  List<int> counts = [];

 
  for (var fruit in fruits) {
   
    if (uniqueFruit.contains(fruit)) {
      
      int index = uniqueFruit.indexOf(fruit);
      counts[index]++;
    } else {
      
      uniqueFruit.add(fruit); // Ajoute le mot unique
      counts.add(1); // Initialise le compteur à 1
    }
  }

 
  print("Occurrences des mots :");
  for (int i = 0; i < uniqueFruit.length; i++) {
    print('${uniqueFruit[i]} : ${counts[i]}'); // Affiche chaque mot et son nombre d'occurrences
  }
}
