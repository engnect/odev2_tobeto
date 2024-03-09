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
}
