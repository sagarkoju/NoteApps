import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Mining extends StatefulWidget {
  @override
  _MiningState createState() => _MiningState();
}

class _MiningState extends State<Mining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction to Data Mining'),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: SfPdfViewer.asset("images/c1.pdf"),
      ),
    );
  }
}