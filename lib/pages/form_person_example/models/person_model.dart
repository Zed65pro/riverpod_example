class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  Person copyWith({String? name, int? age}) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
