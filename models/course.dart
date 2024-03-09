import 'users/instructor.dart';

class Course {
  String courseName;
  String courseDescription;
  late Instructor instructor;
  dynamic coursePrice;
  late String categoryName;

  Course({
    required this.courseName,
    required this.courseDescription,
    required this.instructor,
    required coursePrice,
    required this.categoryName,
  }) {
    if (coursePrice == 0) {
      this.coursePrice = 'ÜCRETSİZ';
    } else {
      this.coursePrice = coursePrice.toString() + " ₺";
    }
  }
}
