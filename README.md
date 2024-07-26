# roll_dice
<p align="center">
  <img src="https://github.com/user-attachments/assets/38fb425d-f2fa-449e-82d6-01bd315860b7" width="200"/>
</p>

## Widgets
- MaterialApp
- Scaffold
- Container
- Center
- BoxDecoration
- Text 
- Image.asset
- TextButton

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
- 초기화 되면 변경 불가능
- 컴파일 타임시 값이 정해진다.
- 메모리를 줄인다.

**final**
- 초기화 되면 변경 불가능
- 런타임시 값이 정해진다.
- 객체일 경우 초기화는 에러 나지만 아이템을 변경하는것은 가능하다.

```dart
void main() {
  const List<int> myConstVar = [1, 2, 3];
  final List<int> myFinalVar = [1, 2, 3];

  myConstVar[0] = 10; # Error: The element cannot be changed.
  myFinalVar[0] = 10;
  myFinalVar = [4, 5, 6]; # Error: The variable cannot be changed.
}
``` 

## CustomWidget
- 생성자는 `const`
- `required` 없이 `default` 값 설정
- 생성자에서 설정한 변수 이름으로 내부에서 사용할 변수 설정
 
```dart
class ColoredContainer extends StatelessWidget {
  const ColoredContainer(
      {super.key, required this.text, this.color = Colors.blue});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final newText = "$text!";

    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Text(newText),
      ),
    );
  }
}
```

## Mutiple Contructor Function
- Named Construtor 라고도 함.
- 생성자 함수를 여러개 생성할수 있다.

```dart
class MyClass {
  const MyClass();
  const MyClass.named();
}

Image(image: AssetImage('assets/images/dice-1.png'))
Image.asset('assets/images/dice-1.png')
```

## Center - Column
- `Center` 는 자식 위젯을 부모 위젯의 중앙에 배치 한다.
- `Column` 은 자식 위젯들을 세로로 나열한다.
- 두 레이아웃을 같이 사용하게 되면 `Center` 위젯의 세로 배열은 무시된다.
- 세로 배열의 중앙에 위치 시키려면 `Column` 위젯에서 컨트롤 해야 한다.

```dart
Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset(
                'assets/images/dice-2.png',
                width: 200,
                height: 200,
            ),
        ],
    ),
),
```

## StatelessWidget & StatefulWidget
- 위젯 내부의 상태가 변해서 다시 랜더링이 되어야 할 경우 `StatefulWidget`을 사용한다.
- 다만 그 상태를 변화 시키는 함수(`setState`)가 있는 위젯이 아니면 `StatelessWidget`을 사용한다.
- `setState` 함수는 `build` 함수를 호출한다.
- `StatefulWidget` 클래스의 멤버에 접근 할때는 `widget` 키워드를 사용한다.


## DEBUG 삭제
```dart
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RollDice(),
    ),
  );
}
```