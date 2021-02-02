import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/Eight/cryptography/chapter1.dart';
import 'package:notes/Eight/cryptography/chapter2.dart';
import 'package:notes/Eight/cryptography/chapter3.dart';
import 'package:notes/Eight/cryptography/chapter4.dart';
import 'package:notes/Eight/cryptography/chapter5.dart';
import 'package:notes/Eight/cryptography/chapter7.dart';

import 'chapter6.dart';

class Crypto extends StatefulWidget {
  @override
  _CryptoState createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cryptography"),
        centerTitle: true,
        backgroundColor: Colors.red,
       ),
       body:  SingleChildScrollView(
                child: Column(
           children: [
             Card(
                 elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(Crypto1());
                    },
                    leading: CircleAvatar(
                       radius: 30.0,
                      child: Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Introduction " ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
           
                 ),
               ),
               Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(Cryto2());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("2", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Classical Cipher Schemes",textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
               ),
                Card(
                 elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(Crypto3());
                    },
                    leading: CircleAvatar(
                       radius: 30.0,
                      child: Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Mathematical Foundations" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                 
                 ),
               ),
             Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(Crypto4());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("4", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Modern Symmetric Ciphers" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                
                 ),
               ),
               Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                    Get.to(Crypto5());
                    },
                    leading: CircleAvatar(
                       radius: 30.0,
                      child: Text("5", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Public Key Cryptography" ,textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                 ),
               ),
               Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                     Get.to(Crypto6());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                       child: Text("6", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Authentication Schemes",textAlign: TextAlign.justify, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                  ),
               ),
                Card(
                  elevation: 2.0,
                  child: ListTile(
                    onTap: (){
                    Get.to(Crypto7());
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("7", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                  title: Text("Network Security" ,textAlign: TextAlign.justify, style: TextStyle(
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