# Dart Language 공부 시작

## 230707

### dart & flutter 설치

1. brew를 이용한 설치.

- brew install --cask flutter
- 패스 지정까지 알아서 해줘서 너무 편했다.
- 맥 환경이 익숙하지는 않은데 brew는 진짜 너무 편하다.
- dart v.3.0.5 / flutter v.3.10.5

### 변수 타입 선언

- var : 타입추론이 가능 / 명시적 타입 선언
- dynamic : 자유로운 타입 변경 가능(사용에 주의)
- final : 변경할 수 없는 상수(js 의 const)
- late : 미리 값을 알 수 없을때 사용(api등으로 받아온 데이터를 넣을 때)
- const : compile시에 미리 알고 있는 값(compile time constant)

### null safety

- 어떠한 변수나, 데이터가 null이 될 수 있음을 명시
- 명시적 타입지정시 null값 허용 가능
- 타입스크립트를 써보길 잘했다는 생각.

## 230709

### data-type

- String : 문자
- bool : 불리언
- int : 정수 숫자
- double : 소수점 숫자
- num : 정수 + 소수점 숫자 (int, double의 부모 class)
- List : 배열 (collection for, collection if 사용 가능)
- Map : js의 obejct
- Set : List와 같지만 유니크한 값을 가지는 map

### string interpolation

- var greeting = 'Hello everyone, my name is $name and I\'m ${age + 2}';
- 위와 같이 사용 가능. 단순히 변수만 쓸 때에는 $변수명, 계산이 필요할 때에는 ${변수 + 계산식}

### Functions

- return값에 따른 타입 선언이 필요.(void, String , num 등)
- fat arrow function 사용 가능 : num plus(num a, num b) => a + b;
- named parameter ( null safety : default value 설정 or required modifier 이용)
- optional parameter : [type? variable = defaultValue] 형태
- QQ operator : left ?? right : 좌항이 null이라면 right를 리턴.(js와 같음)
- typedef : 자료형에 alias 부여, Map으로 뭔가를 보낼때 타입만을 확인할 수 있다는 한계가 존재함.

## 230711

### class

- Flutter는 class로 시작해서 class로 끝난다
- instance를 만들때 new 를 붙이지 않아도 됨.(붙여도 됨)
- class 함수 내부에서 동일한 이름의 변수를 선언하지 않은 이상 this를 붙이지 않아도 됨(붙이지 않는것이 권고)
- constructor에서 named parameter와 같이 arguments의 key값으로 value 지정 가능
- named constructor
  - named parameter => Class.namedConstructor({required type key}) : this.key = value;
  - positional parameter => 기본적으로 모든 parameter는 required
- instance생성시 클래스의 semi colon을 제거하고, ..key로 value 지정 가능
  ```dart
  var geunyoung = Player(name: 'geunyoung', xp: 1200, team: 'red')
    ..name = "testName"
    ..xp = 1200000;
  ```

## 230716

### Enum

- 열거형 타입 : 연관된 상수를 모아놓은 집합.
- 많은 기능들이 Enum타입으로 작성되어 있음
- 실수 방지 가능, 편리함.

### abstract class

- 추상화 클래스.
- 어떤 클래스가 특정 메소드를 가지도록 강제함
- 즉, 이 클래스를 상속받는 클래스가 무엇을 가지고 있을지 확정해주는 역할.
- 사용할 일이 많지는 않음

## 230805

### inheritance

- 상속
- extends를 통해 상속 받을 수 있음
- override를 통해 상속받은 함수에 추가 작업 가능

### minxin

- 믹스인
- 상속개념이 아니고 함께 가는 개념
- 상속은 부모의 인스턴스가 되는것이지만 믹스인은 아님
