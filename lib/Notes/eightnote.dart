import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/Eight/aca.dart';
import 'package:notes/Eight/cryptography/crypto.dart';
import 'package:notes/Eight/datamining.dart';
import 'package:notes/Eight/epp.dart';
import 'package:url_launcher/url_launcher.dart';


class Eight extends StatefulWidget {
  @override
  _EightState createState() => _EightState();
}

class _EightState extends State<Eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eight Semester"),
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
                                Get.to(ACA());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("ACA", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '8',
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
                                Get.to(EPP());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("EPP", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '8',
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
                              onPressed: () async{
                               const URL= "http://jenbati.somee.com/";
                                if(await canLaunch(URL) ){
                                  launch(URL);
                                }
                                else {
                                  throw 'cannot launch $URL';
                                }
                              },
                              icon: Icon(Icons.note,),
                              label: Text("DOT NET", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '8',
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
                                Get.to(Crypto());
                              },
                              icon: Icon(Icons.note,),
                              label: Text("CRYTOGRAPHY", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '8',
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                Data()));
                              },
                              icon: Icon(Icons.note,),
                              label: Text("DATA MINING", textAlign: TextAlign.justify,textScaleFactor: 0.9,)),
                          subtitle: Text(
                            '8',
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