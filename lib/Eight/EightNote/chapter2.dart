import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SecondData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction to Data Warehousing'),
        centerTitle: true,
        backgroundColor: Colors.green,),
      body: Center(
        child: SfPdfViewer.asset("images/c2.pdf"),
      ),
    );
  }
}