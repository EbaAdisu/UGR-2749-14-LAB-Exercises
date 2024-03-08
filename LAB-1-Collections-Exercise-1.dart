void main() {
  List<String> favoriteHobbies = ['Reading', 'Running', 'Cooking', 'Gaming'];

  print('My Favorite Hobbies: $favoriteHobbies');

  favoriteHobbies.add('Traveling');
  print('Added Traveling: $favoriteHobbies');

  favoriteHobbies.remove('Cooking');
  print('Removed Cooking: $favoriteHobbies');

  favoriteHobbies.sort();
  print('Sorted Hobbies: $favoriteHobbies');

  bool isEmpty = favoriteHobbies.isEmpty;
  print('Is the list empty? $isEmpty');
}
