import 'interface/observer.dart';

class Student implements Observer {
  final String _name;

  Student({required String name}) : _name = name;

  @override
  void update(String message) {
    print(_name + 'has new message : ->' + message);
  }
}
