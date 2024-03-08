void main() {
  List<String> favHobbies = ['crocheting', 'singing', 'Workout'];
  
  
  favHobbies.add('cooking');
  print('Added a new hobby: $favHobbies');
  
 
  favHobbies.remove('singing');
  print('Removed a hobby: $favHobbies');
  
  
  favHobbies.sort();
  print('Sorted hobbies: $favHobbies');
  
  
  if (favHobbies.isEmpty) {
    print('No hobbies');
  } else {
    print('Hobbies exist');
  }
}