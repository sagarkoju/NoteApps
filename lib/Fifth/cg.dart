import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer Graphics'),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: SfPdfViewer.asset("images/cg.pdf"),
      ),
    );
  }
}