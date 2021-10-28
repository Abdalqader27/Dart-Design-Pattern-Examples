import 'interface/observer.dart';
import 'interface/subject.dart';

class Course implements Subject {
  final String _name;

  late List<Observer> observerList;
  late String _availability;

  Course({required String name})
      : _name = name,
        observerList = [];

  @override
  void notifyAllSubscribe() {
    observerList.forEach((element) {
      element.update(_availability);
    });
  }

  @override
  void subscribe(Observer observer) {
    observerList.add(observer);
  }

  @override
  void unsubscribe(Observer observer) {
    observerList.remove(observer);
  }

  void setAvailability(bool available) {
    _availability = _name + (available ? '  Available' : '  Not Available');
    notifyAllSubscribe();
  }
}
