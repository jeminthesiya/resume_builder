import 'package:flutter/material.dart';
import 'package:resume_builder/pdf.dart';
import 'package:resume_builder/resume.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        'PDF': (context) => PDF(),
      },
    ),
  );
}
