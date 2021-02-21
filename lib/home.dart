

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:get/get.dart';
import 'package:notes/Fifth/fivemain.dart';

import 'package:notes/Login/login.dart';
import 'package:notes/Notes/eightnote.dart';
import 'package:notes/QuestionBank/questionbank.dart';
import 'package:notes/SixSem/sixsem.dart';
import 'package:notes/Syallbus/Eight/syllabus.dart';
import 'package:notes/Notes/sevennote.dart';
import 'package:notes/contact/contact.dart';
import 'package:notes/servie/auth_provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


 
  String note = "";
  bool isSign= false;
  User firebaseUser;

  
  @override
  Widget build(BuildContext context) {
   
    Widget imagecarousel = new Container(

      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images:[
          AssetImage('images/DSC00220.jpg'),
          AssetImage('images/IMG_0920.jpg'),
          AssetImage('images/received_631595270989333.jpeg'),
         
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,

      ),
 );
    return Scaffold(
     
      appBar: AppBar(
        centerTitle: true,
        title: Text("Computer Engineering Notes"),
        actions: [
         IconButton(
            
              icon: Icon(Icons.lightbulb_outline),
              onPressed: () {
               Get.changeThemeMode(
                 Get.isDarkMode?ThemeMode.light:ThemeMode.dark
               );
              })
        ],
      ),
      drawer:  Drawer(
          child:  new ListView(
          children: [
            
               isSign?CircularProgressIndicator(): UserAccountsDrawerHeader(
                
              accountName: AuthProviderService.instance.user == null? Center():Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome: " , textScaleFactor: 1.3,),
                  Text(AuthProviderService.instance.user.displayName, textScaleFactor: 1.3,),
                ],
              ),
              accountEmail:AuthProviderService.instance.user == null?Center():Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(AuthProviderService.instance.user.email, textScaleFactor: 1.3,),
                ],
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundImage:AuthProviderService.instance.user != null? NetworkImage(AuthProviderService.instance.user.photoURL,): Center(),
                backgroundColor: Colors.grey,
                radius: 150,
               ),
              
            ),
              
     
           ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home "),
              ),
               ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionBank()));
              },
              leading: Icon(Icons.note_add),
              title: Text("Question Bank "),
              ),
               ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Syllabus()));
              },
              leading: Icon(Icons.note_sharp),
              title: Text("Syallbus "),
              ),
               ListTile(
              onTap: (){
               Get.to(ContactUs());

              },
              leading: Icon(Icons.contact_page),
              title: Text("Contact us "),
              ),
               ListTile(
              onTap: (){
                FirebaseAuth firebaseAuth =FirebaseAuth.instance;
                firebaseAuth.signOut().then((value) => Get.to(Login()));

              },
              leading: Icon(Icons.logout),
              title: Text("Logout "),
              ),
          ]
          ),
          
      ),
      body: Stack(
         fit: StackFit.loose,
        children:<Widget>[
            imagecarousel,
           OrientationBuilder(

             builder: (context, orientation)=> orientation ==Orientation.portrait?protrait():landscape(),
                       ), 
                                    
                                  ]
                                ),
                              );
                            }
                          
                            landscape() => Container(
                          child: Column(

                          
                                      children:<Widget>[
                                       
                                       SingleChildScrollView(
                                                                                child: Padding(
                                               padding: const EdgeInsets.all(8.0),
                                               child: Container(
                                                 height: 50,
                                                 width: double.infinity,
                                                //  color: Colors.black,
                                                 
                                                 child: Center(child: Text('Notes', style:TextStyle(color:Colors.red, fontSize: 30.0, fontWeight:FontWeight.bold) ))),
                                             ),
                                       ), 
                                       SizedBox(),
                                      Expanded(
                                        child: GridView(
                                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4),
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
                                                '1',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red, fontSize: 60.0),
                                              )
                                              ),
                                        ),
                                        
                                      ),
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
                                                '2',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red, fontSize: 60.0),
                                              )
                                              ),
                                        ),
                                        
                                      ),
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
                                              )
                                              ),
                                        ),
                                        
                                      ),
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
                          Get.to(Five());
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
                           Get.to(Six());
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          Seven()));
                        },
                        icon: Icon(Icons.note,),
                        label: Text("Semester")),
                                              subtitle: Text(
                                                '7',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red, fontSize: 60.0),
                                              ),),
                                        ),
                                        
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(_)=>Eight()));
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
 
             
               protrait() => Container(
                          child: Column(

                          
                                      children:<Widget>[
                                       SizedBox(
                                       height: 210,
                                     ),
                                       Padding(
                                               padding: const EdgeInsets.all(8.0),
                                               child: Container(
                                                 height: 50,
                                                 width: double.infinity,
                                                //  color: Colors.black,
                                                 
                                                 child: Center(child: Text('Notes', style:TextStyle(color:Colors.red, fontSize: 30.0, fontWeight:FontWeight.bold) ))),
                                             ), 
                                       SizedBox(),
                                      Expanded(
                                        child: GridView(
                                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                      children: <Widget>[
                                        Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                          color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          print('Notes is pressed');
                        },
                        icon: Icon(Icons.note, color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
                                              subtitle: Text(
                                                '1',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red, fontSize: 60.0),
                                              )
                                              ),
                                        ),
                                        
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                           color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          print('Notes is pressed');
                        },
                        icon: Icon(Icons.note,color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
                                              subtitle: Text(
                                                '2',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red, fontSize: 60.0),
                                              )
                                              ),
                                        ),
                                        
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                           color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          print('Notes is pressed');
                        },
                        icon: Icon(Icons.note,color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
                                              subtitle: Text(
                                                '3',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red, fontSize: 60.0),
                                              )
                                              ),
                                        ),
                                        
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                           color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          print('Notes is pressed');
                        },
                        icon: Icon(Icons.note,color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
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
                                           color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                  Get.to(Five());
                        },
                        icon: Icon(Icons.note,color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
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
                                           color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          Get.to(Six());
                        },
                        icon: Icon(Icons.note,color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
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
                                           color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          Seven()));
                        },
                        icon: Icon(Icons.note,color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
                                              subtitle: Text(
                                                '7',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red, fontSize: 60.0),
                                              ),),
                                        ),
                                        
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                           color: Colors.black,
                                          child: ListTile(
                                              title: FlatButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(_)=>Eight()));
                        },
                        icon: Icon(Icons.note,color: Colors.red,),
                        label: Text("Semester",
                                                style: TextStyle(color: Colors.red,),)),
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