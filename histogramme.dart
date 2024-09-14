void main() {
 
  List<String> words = ["apple", "banana", "apple", "orange", "banana", "apple"];

 
  List<String> uniqueWords = [];
  List<int> counts = [];

 
  for (var word in words) {
   
    if (uniqueWords.contains(word)) {
      
      int index = uniqueWords.indexOf(word);
      counts[index]++;
    } else {
      
      uniqueWords.add(word); // Ajoute le mot unique
      counts.add(1); // Initialise le compteur à 1
    }
  }

 
  print("Occurrences des mots :");
  for (int i = 0; i < uniqueWords.length; i++) {
    print('${uniqueWords[i]} : ${counts[i]}'); // Affiche chaque mot et son nombre d'occurrences
  }
}
