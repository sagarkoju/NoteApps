import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/QuestionBank/8sem.dart';
import 'package:notes/SixSem/6question.dart';
import 'package:url_launcher/url_launcher.dart';

class QuestionBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        appBar: AppBar(
          centerTitle: true,
          title:Text('Question Bank') ),

          body: Column(
            children: <Widget>[
              Expanded(
                child: GridView(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                    children: [
                      Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                              
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),
                          ),
                    ),
                    
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                              
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),
                          ),
                    ),
                    
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                              
                              },
                              icon: Icon(Icons.note,),
                              label: Text(" Semester")),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),
                          ),
                    ),
                    
                  ),

                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                              Get.to(Ques());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),
                          ),
                    ),
                    
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                launch("https://drive.google.com/file/d/12GH8MBOF0DHxkcZhEzoBiDDVjoKyqKBE/view?usp=sharing");
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")),
                          subtitle: Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),
                          ),
                    ),
                    
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                              Get.to(EightQuestionBank());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Semester")
                              ),
                          subtitle: Text(
                            '8',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),
                          ),
                    ),
                    
                  ),
                 ],

                ),
              ),
            ]
          ),
      
      
    );
    
  }
}