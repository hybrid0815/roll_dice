import 'dart:io';

void main() {
  printName(name: null, age: 25);
}

void printName({required String? name, required int age}) {
  print('My name is $name and I am $age years old.');
}
