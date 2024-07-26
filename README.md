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

## const & final
**const**

1. 초기화 되면 변경 불가능
1. 컴파일 타임시 값이 정해진다.
1. 메모리를 줄인다.

**final**

1. 초기화 되면 변경 불가능
1. 런타임시 값이 정해진다.
2. 객체일 경우 초기화는 에러 나지만 아이템을 변경하는것은 가능하다.

```dart
void main() {
  const List<int> myConstVar = [1, 2, 3];
  final List<int> myFinalVar = [1, 2, 3];

  myConstVar[0] = 10; # Error: The element cannot be changed.
  myFinalVar[0] = 10;
  myFinalVar = [4, 5, 6]; # Error: The variable cannot be changed.
}

``` 
