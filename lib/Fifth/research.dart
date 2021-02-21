import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Research extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Research Methodology'),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: SfPdfViewer.asset("images/re.pdf"),
      ),
    );
  }
}