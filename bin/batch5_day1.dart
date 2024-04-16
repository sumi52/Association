import 'package:batch5_day1/batch5_day1.dart' as batch5_day1;
import 'package:test/expect.dart';

void main(){
 final seip = seipStudent(stipend: 9000, name: 'ABC', courseName: 'Android');
 final paid = paidStudent(courseFee: 6000, name: 'DEF', courseName: 'Flutter');

 print(seip.getInfo());
 print(paid.getInfo());
}
class Student{
  String name;
  String courseName;
  Student({required this.name, required this.courseName});
  String getInfo () => '$name $courseName'; // 1ta method rakhbo getInfo type er,student er information neyar jonno,return korbe string
}
class seipStudent extends Student {
  double stipend; //mandatory field property

  seipStudent({required this.stipend,
  required String name,
  required String courseName}) : super(name: name, courseName: courseName);
  @override
  String getInfo() => '${super.getInfo()} $stipend';

}
class paidStudent extends Student{
  double courseFee;
  paidStudent({required this.courseFee, required String name, required String courseName}) :
        super(name: name, courseName: courseName);
  @override
  String getInfo() => '${super.getInfo()} $courseFee';
}