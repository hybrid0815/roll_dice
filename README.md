# roll_dice



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Add Assets
```yaml
  assets:
    - assets/images/
```

## Position & Named Arguments

- Position
```dart
void printName(String name, int age) {
  print('My name is $name and I am $age years old.');
}
printName("Kim", 10);


void printName(String? name, int? age) {
  print('My name is $name and I am $age years old.');
}
printName(null, null);
```

- Named 
```dart
void printName({required String name = 'Kim', required int age}) {
  print('My name is $name and I am $age years old.');
}
printName(name: 'Kim', age: 25);


void printName({String name = 'Kim', required int age}) {
  print('My name is $name and I am $age years old.');
}
printName(age: 30);


void printName({String? name, required int age}) {
  print('My name is $name and I am $age years old.');
}
printName(age: 30);



void printName({required String? name, required int age}) {
  print('My name is $name and I am $age years old.');
}
printName(name: null, age: 25);
```

## const
컴파일 타임시 값이 고정된다.

메모리를 줄인다.

## final



