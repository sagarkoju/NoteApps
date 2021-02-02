import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SevenData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mining complex types of data'),
        centerTitle: true,
        backgroundColor: Colors.green,),
      body: Center(
        child: SfPdfViewer.asset("images/c7.pdf"),
      ),
    );
  }
}