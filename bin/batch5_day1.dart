import 'package:batch5_day1/batch5_day1.dart' as batch5_day1;
import 'package:test/expect.dart';

void main() {
  Student s1 = Student(name: 'sumi', nid:  30954395843,  );
  Student s2 = Student(name: 'Mona', nid: 6664646, mobile: '098765421');
  Student s3 = Student(name: 'Tanjina', nid: 6473566756, mobile: '098258963');

  s1.department = Department(departmentName: 'CSE', id: 'CSE-234', batch: 'A');
  s2.department = Department(departmentName: 'CS', id: 'CSE-224', batch: 'B');
  s3.department = Department(departmentName: 'EEE', id: 'CSE-234', batch: 'C');

  s1.courseList =[
    Course(courseName: 'Android', courseCredit: 3.0, code: 'A007'),
    Course(courseName: 'ios', courseCredit: 3.0, code: 'i007'),
    Course(courseName: 'React Native', courseCredit: 3.0, code: 'R007'),
  ];
  s2.courseList =[
    Course(courseName: 'Dot NET', courseCredit: 3.0, code: 'DN007'),
    Course(courseName: 'Laravel', courseCredit: 3.0, code: 'L007'),
    Course(courseName: 'React', courseCredit: 3.0, code: 'R007'),
  ];
  s3.courseList =[
    Course(courseName: 'English', courseCredit: 3.0, code: 'Eng007'),
    Course(courseName: 'Bangla', courseCredit: 3.0, code: 'Bn007'),
    Course(courseName: 'History', courseCredit: 3.0, code: 'HN007'),
  ];
final StudentList = [s1,s2,s3];
for (var student in StudentList){
  int serial = 1; // 1,2,3 evabe serial number call korar jonno
 print(student.name);
 print('----------------');
 for(var course in student.courseList!){
   print('$serial. ${course.courseName} - ${course.courseCredit}');
   serial++;
 }
 print('\n');
}
}
class Student{
  String? name;
  int? nid;
  String? mobile;
  Department? department; // 1 to 1 association
  List<Course>? courseList;
 Student({required this.name,
   required this.nid,
   this.courseList,
   this.department,
   this.mobile}) : assert(nid! > 0);
  getInfo() => '$name $nid $mobile';
}
class Department{
  String departmentName;
  String id;
  String batch;
  List<Student>? student; // 1 to many association

  Department({required this.departmentName, required this.id, required this.batch});
}
class Course{
  String courseName;
  double courseCredit;
  String code;
  Course ({required this.courseName,
    required this.courseCredit,
    required this.code }) : assert(courseCredit >0.0);
}