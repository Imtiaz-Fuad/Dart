//Normal constructor
class constructor {
  String? s;
  constructor(this.s);
}

//Same instance always returned when called. Used for object caching
class factoryConstructor1 {
  static final _instance = factoryConstructor1._internal();
  factory factoryConstructor1() {
    return _instance;
  }
  factoryConstructor1._internal(); //only the class can create the object
}

//Extracts values from JSON map and creates a object using the extracted values.
class factoryConstructor2 {
  final String name;
  final int age;
  factoryConstructor2(this.name, this.age);

//fromJson isn't a keyword, it's just a convention.
  factory factoryConstructor2.fromJson(Map<String, dynamic> json) {
    return factoryConstructor2(
      json['name'],
      json['age'],
    );
  }
}

void main(List<String> args) {
  print(identical(constructor("test"), constructor("test")));
  print(identical(factoryConstructor1(), factoryConstructor1()));
  print(factoryConstructor2.fromJson({'name': 'John', 'age': 30}).name);
}
