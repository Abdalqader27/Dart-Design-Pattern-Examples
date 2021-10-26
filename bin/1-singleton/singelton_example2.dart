class SingletonExample2 {
  static final SingletonExample2 _instance = SingletonExample2._();
  final List<int> _numbers = [1, 2, 3, 4];

  SingletonExample2._() {
    _numbers.shuffle();
    print(_numbers.hashCode);
  }

  factory SingletonExample2() => _instance;
}

void main() {
  var object1 = SingletonExample2();
  var object2 = SingletonExample2();
  var object3 = SingletonExample2();

  // Print one hash code
}
