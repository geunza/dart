mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print("runnnnnnnnn!");
  }
}
mixin Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;
  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {}
/*
// inehritance
class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print('Hi my name is $name');
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;
  Player({
    required this.team,
    required String name,
  }) : super(name: name);
  @override
  void sayHello() {
    // TODO: implement sayHello
    super.sayHello();
    print("and I play for $team");
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'gy',
  );
  player.sayHello();
}
*/