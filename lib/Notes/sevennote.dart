import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Seven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seven Semester"),
       ),
       body: Column(
         children: [
           Card(
               elevation: 2.0,
                child: ListTile(
                  onTap: (){
                    launch("https://drive.google.com/open?id=1M79VpRDQEBYcrmuX2Aikw6nSS64GKVkv");
                  },
                  leading: CircleAvatar(
                     radius: 30.0,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSJ02BWDcHjPj20mJ0M-agVFdWX_VWZjyubyEIm30110vTD2LiW&usqp=CAU")
                  ),
                title: Text("Simulation and Modelling", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
         
               ),
             ),
             Card(
                elevation: 2.0,
                child: ListTile(
                  onTap: (){
                    launch("https://drive.google.com/open?id=1YNc2cgGLhFUVO_NRA8VY6phxK4A6jgdV");
                  },
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://d1m75rqqgidzqn.cloudfront.net/wp-data/2019/11/12140511/shutterstock_519560572.jpg")
                  ),
                title: Text("Airtifical Intelligence", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
              ),
             ),
              Card(
               elevation: 2.0,
                child: ListTile(
                  onTap: (){
                    launch("https://drive.google.com/file/d/1G_GL0Mn8g8QDSwWczqCEalXRdWkdu8Qe/view?usp=sharing");
                  },
                  leading: CircleAvatar(
                     radius: 30.0,
                    backgroundImage: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/518wteZcWYL._SX329_BO1,204,203,200_.jpg")
                  ),
                title: Text("Entrepreneurship", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
               
               ),
             ),
           Card(
                elevation: 2.0,
                child: ListTile(
                  onTap: (){
                    launch("https://drive.google.com/file/d/1G_GL0Mn8g8QDSwWczqCEalXRdWkdu8Qe/view?usp=sharing");
                  },
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://images.tandf.co.uk/common/jackets/amazon/978149870/9781498705271.jpg")
                  ),
                title: Text("Software Engineering", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
              
               ),
             ),
             Card(
                elevation: 2.0,
                child: ListTile(
                  onTap: (){
                    launch("https://drive.google.com/open?id=0B7juBQ3tJnZBMGZZQWk0eDJ6ekk");
                  },
                  leading: CircleAvatar(
                     radius: 30.0,
                    backgroundImage: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/61wLb63PQpL.jpg"),
                  ),
                title: Text("IPPR", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
               ),
             ),
             Card(
                elevation: 2.0,
                child: ListTile(
                  onTap: (){
                    launch("https://drive.google.com/file/d/1qZAuJJmdlijqafQaU_3vMBAvNTbY4s0A/view?usp=sharing");
                  },
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://i.ibb.co/5KM4Ps9/mc-pure-compressor.jpg")
                  ),
                title: Text("Mobile Computing", style: TextStyle(
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
      );
       }
}
     