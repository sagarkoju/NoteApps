import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/Fifth/aad.dart';
import 'package:notes/Fifth/cg.dart';
import 'package:notes/Fifth/nm.dart';
import 'package:notes/Fifth/os.dart';
import 'package:notes/Fifth/research.dart';


class Five extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fifth Semester"),
        centerTitle: true,
        backgroundColor: Colors.red,
       ),
       body: Column(
        children:<Widget>[
            
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Notes', style:TextStyle(color:Colors.red, fontSize: 30.0, fontWeight:FontWeight.bold) ),
           ), 
          Expanded(
            child: GridView(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                               Get.to(OS());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("OS ", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )
                          ),
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                              Get.to(CG());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Graphics", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                Get.to(NM());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("NM", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                Get.to(Research());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Research", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          )),
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                  Get.to(AAD());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("AAD", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),),
                    ),
                    
                  ),
                     
                 
                ]
            ),
          ),
        ]
      ),
      );
  }
}