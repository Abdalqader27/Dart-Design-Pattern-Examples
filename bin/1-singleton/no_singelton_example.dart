class NoSingletonExample1 {
  final List<int> _numbers = [1, 2, 3, 4];

  NoSingletonExample1() {
    _numbers.shuffle();
    print(_numbers.hashCode);
  }

}

void main() {
  // var object1=SingletonExample1();  Not acceptable
  var object1 = NoSingletonExample1();
  var object2 = NoSingletonExample1();
  var object3 = NoSingletonExample1();
  // Print three   hash code objects
}
