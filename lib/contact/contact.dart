import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 600,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/s6.jpg') ,
                    radius: 60,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Sagar Koju', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 10,
                  ),
                   Text('Computer Engineering', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                   SizedBox(
                     height: 10,
                   ),
                   Text('To be able to work for an encouraging and stable company that will assist me in developing, improving, and obtaining the necessary skills in order to become the best engineer possible.', textAlign: TextAlign.justify,),
                   Divider(
                     color: Colors.pink,
                   ),
                   ListTile(
                     leading: Icon(Icons.home),
                     title: Text('Kamalbinyak-10 Bhaktapur'),
                   ),
                     ListTile(
                     leading: Icon(Icons.phone),
                     title: Text('+9779863180182'),
                   ),
                     ListTile(
                     leading: Icon(Icons.email),
                     title: Text('sagarkoju5@gmail.com'),
                   ),
                   Divider(
                     color: Colors.pink,
                   ),
                   SizedBox(
                     height: 10,
                   ),
                    Card(
                                        child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget> [
                       IconButton(
                         icon: Icon(FontAwesomeIcons.facebook), onPressed: () {
                           launch("https://www.facebook.com/sagar.koju");
                         },
                         color: Colors.blue,
                       ),
                       IconButton(
                         icon: Icon(FontAwesomeIcons.googleDrive), onPressed: () {
                           launch("https://drive.google.com/drive/u/0/my-drive");
                         },
                         color: Colors.blueAccent,
                       ),
                       IconButton(
                         icon: Icon(FontAwesomeIcons.instagram), onPressed: () {
                           launch("https://www.instagram.com/?hl=ne");
                         },
                          color: Colors.red,
                       ),
                       IconButton(
                         icon: Icon(FontAwesomeIcons.google, 
                         color: Colors.blueGrey,
                       ), onPressed: () {
                         launch("https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox");
                       },
                       ),
                   ]
                 ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}