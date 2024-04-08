import 'package:flutter/material.dart';
import 'pages/list_screen.dart';
import 'pages/courses.dart' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CourseListScreen(
        courses: initialCourses, 
      ),
    );
  }
}

// Define some initial dummy data for testing
List<Course> initialCourses = [
  Course(code: 'CS101', title: 'Introduction to Computer Science', description: 'This course covers the basics of computer science.'),
  Course(code: 'loreoum 1', title: 'loreum ipsum 1', description: 'SDXFCGVHBJNKLZDSFXCGVHBJNKML,;DFCGYHJ'),
  Course(code: 'loreum 2', title: 'loreum ipsum 2', description: 'XDFCGVHBJNKMASDFGHJKLSDZXFGHJKL'),
];