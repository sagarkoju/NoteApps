import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ACA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advance Computer Architecture'),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: SfPdfViewer.asset("images/srk.pdf"),
      ),
    );
  }
}