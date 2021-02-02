import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class EightData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application and trends in data warehousing and data mining' ,textAlign: TextAlign.justify,),
        centerTitle: true,
        backgroundColor: Colors.green,),
      body: Center(
        child: SfPdfViewer.asset("images/c8.pdf"),
      ),
    );
  }
}