import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class EightSyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eight Semester Syallbus', textAlign: TextAlign.justify,),
        centerTitle: true,
        backgroundColor: Colors.green,),
      body: Center(
        child: SfPdfViewer.asset("images/8syllabus.pdf"),
      ),
    );
  }
}