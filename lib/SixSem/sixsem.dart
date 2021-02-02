import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/SixSem/eco.dart';
import 'package:notes/SixSem/multi.dart';
import 'package:notes/SixSem/network.dart';
import 'package:notes/SixSem/pom.dart';
import 'package:notes/SixSem/probabilty.dart';
import 'package:notes/SixSem/toc.dart';

class Six extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Six Semester"),
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
                               Get.to(Toc());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("TOC", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '6',
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
                               Get.to(Multi());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Multimedia", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '6',
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
                                Get.to(POM());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("POM", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '6',
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
                              Get.to(Eco());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Economic", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '6',
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
                               Get.to(Prob());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Probability", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 60.0),
                          ),),
                    ),
                    
                  ),
                      Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: (){
                                Get.to(Network());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("Network", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '6',
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