import 'category.dart';
import 'users/instructor.dart';

class Course extends Category {
  String courseName;
  String courseDescription;
  late Instructor instructor;
  dynamic coursePrice;
  //late String categoryName;

  Course(
      {required this.courseName,
      required this.courseDescription,
      required this.instructor,
      required coursePrice,
      required super.categoryName}) {
    if (coursePrice == 0) {
      this.coursePrice = 'ÜCRETSİZ';
    } else {
      this.coursePrice = coursePrice.toString() + " ₺";
    }
  }
}
