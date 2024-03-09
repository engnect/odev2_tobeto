import '../course.dart';
import 'user.dart';

class Student extends User {
  int tcNo;
  List<Course> courses = [];

  Student(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.password,
      required super.userType,
      required this.tcNo}) {}

  void addCourse(Course course) {
    courses.add(course);
  }

  void getAllCourses() {
    print("$firstName $lastName adlı öğrencinin aldığı bütün dersler");
    for (var course in courses) {
      print(
          "Ders adı: ${course.courseName}, Öğretmen adı: ${course.instructor}, Ders fiyatı: ${course.coursePrice}");
    }
  }
}
