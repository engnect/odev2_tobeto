import 'user.dart';

class Instructor extends User {
  int phoneNumber;

  Instructor(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.password,
      required super.userType,
      required this.phoneNumber}) {}

  static void getInstructorInfo(Instructor instructor) {
    print(
        "Eğitmen adı: ${instructor.firstName} ${instructor.lastName} \nEğitmen email: ${instructor.email}");
  }
}
