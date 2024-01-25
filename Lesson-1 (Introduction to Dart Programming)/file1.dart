import 'dart:io'; // For input and output
void main(){
  // Name input
  print("Enter your name: ");
  String? name = stdin.readLineSync();// ? -> in null safety chapter
  print("Hello $name"); // String formatting (just like fstring in python)

  // Age input
  print("Enter your age: ");
  String? age_string = stdin.readLineSync();
  int age_number = int.parse(age_string!); // ! asserts that this value is non-null to the compiler

  // Name and Age output
  print("Your name is $name");
  print("Your age is $age_number");
}