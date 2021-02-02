import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:notes/Login/login.dart';
import 'package:notes/theme/theme.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

  
        return GetMaterialApp(
       
       debugShowCheckedModeBanner: false,
      

        home: Login(),
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
      );
      
      
    
  }
}

