import 'package:dio/dio.dart';

import 'model.dart';

import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class StudentController {
  static Future<List<Student>> fetchAllStudents() async {
    try {
      // Check if the token exists

      final dio = Dio();
      final response = await dio.get('http://localhost:5002/api/student');
      print(response.statusCode);
      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data;
        final List<Student> students =
            responseData.map((data) => Student.fromJson(data)).toList();
        print(response.data);
        return students;
      } else {
        print('Status Code: ${response.statusCode}');

        throw Exception(
            'Non 200 status code: ${response.statusCode}, ${response.data}');
      }
    } catch (e) {
      throw Exception('Failed to fetch all students: $e');
    }
  }

  static Future<void> saveStudentsToCsv(List<Student> students) async {
    try {
      final List<List<dynamic>> csvData = [];
      // Add CSV header
      csvData.add([
        'Student ID',
        'Full Name',
        'Country Code',
        'Phone Number',
        'Email',
        // ... add more headers based on your Student class fields
      ]);

      // Convert students to CSV rows
      for (var student in students) {
        csvData.add([
          student.studentID,
          student.fullName,
          student.countryCode,
          student.phoneNumber,
          student.email,
          // ... add more fields based on your Student class
        ]);
      }

      final String csv = const ListToCsvConverter().convert(csvData);

      final directory = await getExternalStorageDirectory();
      final file = File('${directory!.path}/students.csv');
      await file.writeAsString(csv);

      print('CSV saved at: ${file.path}');
    } catch (e) {
      print('Error saving CSV: $e');
    }
  }
}
