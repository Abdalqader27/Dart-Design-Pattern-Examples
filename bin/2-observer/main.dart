import 'course.dart';
import 'student.dart';

void main() {
  var student1 = Student(name: 'Anas');
  var student2 = Student(name: 'Ahmad');
  var student3 = Student(name: 'Mohammad');
  var student4 = Student(name: 'Nour');

  var course1 = Course(name: 'C++');
  var course2 = Course(name: 'C');
  var course3 = Course(name: 'Java');
  var course4 = Course(name: 'Dart');

  course1.subscribe(student1);
  course1.subscribe(student2);
  course1.subscribe(student3);
  course2.subscribe(student3);
  course4.subscribe(student3);

  course1.setAvailability(true);
  course2.setAvailability(true);
  course4.setAvailability(false);
}
