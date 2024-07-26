import 'dart:io';

void main() {
  const List<int> myConstVar = [1, 2, 3];
  final List<int> myFinalVar = [1, 2, 3];

  myConstVar[0] = 10; # Error: The element cannot be changed.
  myFinalVar[0] = 10;
  myFinalVar = [4, 5, 6]; # Error: The variable cannot be changed.
}
