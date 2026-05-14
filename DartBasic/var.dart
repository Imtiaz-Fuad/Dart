// Const and Final
//Null operator



main() {
  final List<Map<String, dynamic>> student = [
    {'name': "fuad", 'mark': 10},
    {'name': "fuad1", 'mark': 40},
    {'name': "fuad2", 'mark': 30},
  ];

  student.add({'name': 'f3', 'mark': 40});
  
  String getGrade(int s) {
    if (s >= 30)
      return 'A+';
    else if (s >= 20)
      return 'A';
    else
      return 'F';
  }

  for (var s in student) {
    final name = s['name'];
    final score = s['mark'];
    print("$name : ${getGrade(score)}, (score:$score)");
  }
  
  student.sort((a, b) => a['mark'].compareTo(b['mark']));
  //print(student);
  student.sort((b, a) => a['mark'].compareTo(b['mark']));
  //print(student);

  final low = student.where((s) => s['mark'] < 40);
  print(low);
}
