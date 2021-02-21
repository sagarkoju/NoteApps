import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class OS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operating System'),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: SfPdfViewer.asset("images/os.pdf"),
      ),
    );
  }
}