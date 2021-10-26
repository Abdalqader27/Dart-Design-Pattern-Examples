class SingletonExample1 {
  static final SingletonExample1 _instance = SingletonExample1._();
  final List<int> _numbers = [1, 2, 3, 4];

  SingletonExample1._() {
    _numbers.shuffle();
    print(_numbers.hashCode);
  }

  static SingletonExample1 get getInstance => _instance;
}

void main() {
  // var object1=SingletonExample1();  Not acceptable
  var object1 = SingletonExample1.getInstance;
  var object2 = SingletonExample1.getInstance;
  var object3 = SingletonExample1.getInstance;
  // Print one hash code
}
