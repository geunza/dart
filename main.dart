void main() {
  // 변수를 지정하는 기본 방법 2가지.
  // 1. var
  // 2. String등의 명시적 타입 선언
  // 함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용한다.
  // class에서 변수나 property를 선언할 때에는 타입을 지정해준다.
  String name = "근영";
  name = "Geunyoung";

  /*
    dynamic : 변수의 타입을 당장 확인하기 어렵거나, 상황에 따라 바뀌어야 할 때, 타입에 구애받지 않고 사용하는 선언.
    
    꼭 필요할때만 사용할 것. -> 
      -결국 자바스크립트의 자유로움 때문에 타입스크립트를 쓰는것과 같은 이유인듯. 
      타입이 자유로우면 처음엔 편해지겠지만 규모가 커질수록 난장판이 되기 쉽기 때문으로 생각됨.
   */
  // dynamic name2; 좌측처럼 dynamic을 명시적으로 선언해주거나, 아래처럼 값 없이 var로 선언하면 dynamic타입 지정
  var name2;
  if (name is String) {
    // dynamic 사용시 뭘 하기 전에 타입 확인을 꼭 해주자.
  }
  name2 = "geunyoung";
  name2 = 12;
  name2 = true;

  // null safety
  String? geunyoung = "geunyoung";
  // geunyoung.length
  if (geunyoung != null) {
    geunyoung.isNotEmpty;
  }
  geunyoung?.isNotEmpty;
  geunyoung = null;
}
