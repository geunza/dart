class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });
  void sayHello() {
    print("Hi my name is $name");
  }
  /*
  // api 데이터 기반 instance 생성시 예제
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];
  */

  /*
  named constructor
  // named parameter
  Player.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = "red",
        this.xp = 0;

  // positional parameter
  Player.createBluePlayer(
    String name,
    int age,
  )   : this.age = age,
        this.name = name,
        this.team = "blue",
        this.xp = 0;
  */
}

void main() {
  var geunyoung = Player(name: 'geunyoung', xp: 1200, team: 'red')
    ..name = "testName"
    ..xp = 1200000
    ..team = "blue"
    ..sayHello();

  /*
  // api 데이터 기반 instance 생성시 예제
  var apiData = [
    {
      "name": "geunyoung",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lynn",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "dal",
      "team": "red",
      "xp": 0,
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
  */

  /*
  named constructor
  var player = Player.createRedPlayer(
    name: "geunyoung",
    age: 1200,
  );
  player.sayHello();
  var player2 = Player.createBluePlayer(name: "lynn", age: 1500);
  */

  /*
  // 기본 constructor 사용
  var player = Player(
    name: "geunyoung",
    xp: 1200,
    team: 'blue',
    age: 30,
  );
  player.sayHello();
  var player2 = Player(
    name: "lynn",
    xp: 1500,
    team: 'red',
    age: 25,
  );
  */
}
