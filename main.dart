import 'models/course.dart';
import 'models/users/instructor.dart';
import 'models/users/student.dart';
import 'models/category.dart';
import 'models/users/user_type.dart';

void main() {
  // Kategoriler burada eklenir
  Category category1 = Category(categoryName: 'Programlama');
  Category category2 = Category(categoryName: 'Mobil');
  Category category3 = Category(categoryName: 'Veri Bilimi');

  // Eğitmenler burada eklenir
  Instructor instructor1 = Instructor(
      firstName: 'Halit Enes',
      lastName: 'Kalaycı',
      email: "halit@gmail.com",
      password: '123!',
      userType: UserType.Instructor,
      phoneNumber: 5501558080);

  Instructor instructor2 = Instructor(
      firstName: 'Engin',
      lastName: 'Demiroğ',
      email: "engdemiro@gmail.com",
      password: '987!',
      userType: UserType.Instructor,
      phoneNumber: 5501558080);
  // Öğrenciler burada eklenir
  Student student1 = Student(
      firstName: 'Engin',
      lastName: 'Taşkın',
      email: 'ect@gmail.com',
      password: '1231',
      tcNo: 12345678901,
      userType: UserType.Student);

  Student student2 = Student(
      firstName: 'Ahmet',
      lastName: 'Kaya',
      email: 'ahmet@gmail.com',
      password: '12123213',
      tcNo: 98765432101,
      userType: UserType.Student);

  // Dersler burada eklenir
  Course course1 = Course(
      courseName: 'Flutter ile Mobil Uygulama Geliştirme',
      courseDescription:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
      instructor: instructor1,
      coursePrice: 15,
      categoryName: category2.categoryName);

  Course course2 = Course(
      courseName: 'Yazılımcı Geliştirme Kampı (C# + Angular)',
      courseDescription:
          '2 ay sürecek Yazılım Geliştirici Yetiştirme Kampımızın takip, döküman ve duyurularını buradan yapacağız.',
      instructor: instructor2,
      coursePrice: 0,
      categoryName: category1.categoryName);

  Course course3 = Course(
      courseName: 'Yazılım Geliştirici Yetiştirme Kampı (JAVA + REACT)',
      courseDescription:
          '2 ay sürecek Yazılım Geliştirici Yetiştirme Kampımızın takip, döküman ve duyurularını buradan yapacağız.',
      instructor: instructor2,
      coursePrice: 0,
      categoryName: category1.categoryName);

  Course course4 = Course(
      courseName: 'Python ile Veril Bilimi',
      courseDescription:
          '1,5 ay sürecek eğitim kampımızın takip, döküman ve duyurularını buradan yapacağız.',
      instructor: instructor2,
      coursePrice: 0,
      categoryName: category3.categoryName);

  student1.addCourse(course1);
  student1.addCourse(course2);
  student2.addCourse(course3);
  student2.addCourse(course4);

  student1.getAllCourses();
  student2.getAllCourses();

  Instructor.getInstructorInfo(instructor2);
}
