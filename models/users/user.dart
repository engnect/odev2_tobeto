import 'user_type.dart';

class User {
  String firstName;
  String lastName;
  String email;
  String password;
  UserType userType;

  User(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.userType}) {}
}
