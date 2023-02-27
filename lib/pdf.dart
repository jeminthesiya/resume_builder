import 'package:flutter/material.dart';
import 'package:resume_builder/modal.dart';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade800,
          title: Text(
            "Select Resume",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/resume.png",
              ),
              Image.asset(
                "assets/images/download.png",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
