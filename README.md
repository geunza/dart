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
