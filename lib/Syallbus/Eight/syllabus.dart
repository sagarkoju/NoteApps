import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/SixSem/syllabus.dart';
import 'package:notes/Syallbus/Eight/eightsyllabus.dart';
import 'package:url_launcher/url_launcher.dart';

class Syllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          centerTitle: true,
        title: Text('Syallbus'),
      ),
      body: Column (
        children: <Widget>[
        Expanded(
            child: GridView(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                     children: <Widget>[
                      Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                print('Notes is pressed');
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                             launch("https://drive.google.com/file/d/1PTqsdgEN1gFCF8JpJLWcHD7VE5srzIOr/view?usp=sharing");
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                launch("https://drive.google.com/file/d/1GJ-HIh3GS1cKDV8MkVDz93qZo7EOpipv/view?usp=sharing");
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                Get.to(Syallbus());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                launch("https://drive.google.com/file/d/1nIQBQcKtXvTdV-w1EMjumw5UoxBoODvq/view?usp=sharing");
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                Get.to(EightSyllabus());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '8',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                  ]
            ),
            ),
        ]
      )
        );
  }
}