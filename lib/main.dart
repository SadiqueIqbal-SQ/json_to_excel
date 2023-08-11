import 'package:flutter/material.dart';
import 'controller.dart';
import 'model.dart'; // Make sure to import your Student and StudentController classes

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSV Conversion and Saving',
      home: CsvConversionScreen(),
    );
  }
}

class CsvConversionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSV Conversion and Saving'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _fetchStudents,
          child: Text('Convert and Save CSV'),
        ),
      ),
    );
  }

  void _fetchStudents() async {
    try {
      List<Student> students = await StudentController.fetchAllStudents();
      await StudentController.saveStudentsToCsv(students);
      print('CSV conversion and saving completed successfully.');
    } catch (e) {
      print('Error: $e');
    }
  }
}
