class Student {
String name;
int idNumber;
List<double> grades;
Student({
required this.name,
required this.idNumber,
required this.grades,
});
void displayInfo() {
print('====================================');
print(' STUDENT REPORT ');
print('====================================');
print('Name : $name');
print('ID Number : $idNumber');
print('\nSubject Grades:');
for (int i = 0; i < grades.length; i++) {
print(' Subject ${i + 1}: ${grades[i].toStringAsFixed(2)}');
}
double average = computeGrade(grades);
print('\nAverage Grade: ${average.toStringAsFixed(2)}');

String status;
if (average >= 75) {
status = 'Passed';
} else if (average >= 70) {
status = 'Conditional';
} else {
status = 'Failed';
}
print('Status : $status');
print('====================================');
}
}
double computeGrade(List<double> grades) {
double sum = 0.0;
for (double grade in grades) {
sum += grade;
}
return sum / grades.length;
}
void main() {
print('=== STUDENT DATA ===');
print('Name: Joshua laroga');
String name = stdin.readLineSync();
print('ID Number: 424000764');
int idNumber = int.parse(stdin.readLineSync());
List<double> grades = [];
for (int i = 0; i < 3; i++) {
double grade = double.parse(stdin.readLineSync());
grades.add(grade);
}
print('\n');
Student student = Student(
name: name,
idNumber: idNumber,
grades: grades,
);

student.displayInfo();
}
// DartPad Stdin Compatibility Layer
class _DartPadStdin {
final List<String> _mockData = [
'Joshua laroga',
'424000764',
'85.5',
'72.0',
'90.0',
];
int _index = 0;
String readLineSync() {
if (_index < _mockData.length) {
String input = _mockData[_index++];
if (_index > 2) {
print('> $input');
}
return input;
}
return '';
}
}
final stdin = _DartPadStdin();