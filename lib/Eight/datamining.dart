import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/Eight/EightNote/chapter1.dart';
import 'package:notes/Eight/EightNote/chapter2.dart';
import 'package:notes/Eight/EightNote/chapter3.dart';
import 'package:notes/Eight/EightNote/chapter4.dart';
import 'package:notes/Eight/EightNote/chapter5.dart';
import 'package:notes/Eight/EightNote/chapter6.dart';
import 'package:notes/Eight/EightNote/chapter8.dart';



import 'EightNote/chapter7.dart';

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Mining & Data Warehousing"),
        centerTitle: true,
        backgroundColor: Colors.red,
       ),
       body:  SingleChildScrollView(
                child: Column(
           children: [
             Center(
               child: Card(
                   
                     elevation: 2.0,
                      child: ListTile(
                        onTap: (){
                        Get.to(Mining());
                        },
                        leading: CircleAvatar(
                           radius: 30.0,
                          child: Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                        ),
                      title: Text("Introduction to Data Mining" ,textAlign: TextAlign.justify, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),),
           
                     ),
                   ),
             ),
               Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(SecondData());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Introduction to Data Warehousing",textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
               ),
                Card(
                 elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(ThirdData());
                    },
                    leading: CircleAvatar(
                       radius: 30.0,
                      child: Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Data warehouse logical and physical design" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                 
                 ),
               ),
             Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                      Get.to(FourData());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("4", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Data warehousing technologies and implementations" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                
                 ),
               ),
               Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(FiveData());
                    },
                    leading: CircleAvatar(
                       radius: 30.0,
                      child: Text("5", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Data Warehouse to Data Mining" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                 ),
               ),
               Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                      Get.to(SixData());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                       child: Text("6", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Data Mining Approaches and Methods",textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                  ),
               ),
                Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                      Get.to(SevenData());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("7", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Mining complex types of data" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                  ),
               ),
               Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(EightData());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("8", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Application and trends in data warehousing and data mining" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                  ),
               ),
               RaisedButton(
              color: Colors.tealAccent,
              child: Text("Go Back",style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              onPressed: (){
                Navigator.pop(context);
                  },
            ),
           ],
         ),
       ),
      );
  }
}