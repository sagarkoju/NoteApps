import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FiveData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Data Warehouse to Data Mining'),
        centerTitle: true,
        backgroundColor: Colors.green,),
      body: Center(
        child: SfPdfViewer.asset("images/c5.pdf"),
      ),
    );
  }
}