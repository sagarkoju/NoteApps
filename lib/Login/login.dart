import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



import 'package:notes/SignUp/signup.dart';
import 'package:notes/home.dart';
import 'package:notes/homelogin.dart';
import 'package:notes/servie/auth_provider.dart';




class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();
   bool  _toggleVisibility =true;
     User firebaseUser;
  // GoogleSignIn _googleSignIn = GoogleSignIn();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  bool isSignup= false;
  
  String taskText;
  

   Widget _buildUserNameField(){
      
      return   TextFormField(
                                controller: _usernameController,
                                 validator: ( String value){
                                    if(value.isEmpty){
                                      return 'Please enter some text';
                                    }
                                    return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value){
                                     taskText= value;
                                },
                                decoration: InputDecoration(
                                  hintText: "Enter the user name",
                                  labelText: "Username",
                                  
                                ),
                      );
   }
  Widget _buildPasswordTextField(){

    return TextFormField(
      controller: _passwordController,
     
                                 validator: ( String value){
                                    if(value.isEmpty){
                                      return 'Please enter the password';
                                    }
                                    return null;
                                },
      decoration: InputDecoration(
        hintText: " Enter the Password",
        labelText: "Password",
        
        
        hintStyle: TextStyle(color: Color(0xFFBDC2CB),fontSize:18.0),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
               _toggleVisibility = !_toggleVisibility;
            });
          },
          icon:_toggleVisibility?Icon(Icons.visibility_off):
          Icon(Icons.visibility),
          ),
      ),
      obscureText: _toggleVisibility,
    );
  }

 
  @override
  void dispose() {
   _usernameController.dispose();
   _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("images/s6.jpg", fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.8),
          colorBlendMode: BlendMode.darken,
          ),
           Center(
           child: OrientationBuilder(
              builder: (context, orientation)=> orientation == Orientation.portrait ? buildProtrait():buildLandscape(),
                                                    
                                       ),
                                     ),
                            
                                    ],)
                                  
                                );
                              }
                             signinwithemail() async{
                            
                               
                              FirebaseAuth firebaseAuth = FirebaseAuth.instance;
                              await firebaseAuth.signInWithEmailAndPassword(email:_usernameController.text , password: _passwordController.text);
                              
                              
                              }
                               bool isSignIn= false;
                            
                              buildLandscape() =>SingleChildScrollView(
                                                              child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,   
                                                  children: <Widget>[   
                                                  Text("Sign In ", style: TextStyle(color: Colors.white, fontSize: 30.0),),
                                                  Center(
                                                  child: Padding(
                                                  padding: const EdgeInsets.all(20.0),
                                                  child: SingleChildScrollView(
                                                   child: Form(
                                                         key: formkey,
                                                          child: Card(
                                                               child: Padding(
                                                              padding: const EdgeInsets.all(16.0),
                                                              child: Column(
                                                    children: <Widget>[
                                                      _buildUserNameField(),
                                                      SizedBox(
                                                        height: 5.0,
                                                      ),
                                                      _buildPasswordTextField(),
                                                     
                                                      SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      FlatButton(
                                                    onPressed: () async{
                                                     
                                                        setState(() {
                                                        });
                                                      if (formkey.currentState.validate()){
                                                         await signinwithemail();
                                                      }
                                                     await signinwithemail();
                                                       Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                                                       Get.snackbar("Welcome to ", "Home Page",
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.red,
                              backgroundColor: Colors.black,
                              animationDuration: Duration(milliseconds: 5000),
                               titleText: Text("Welcome to Home Page",style: TextStyle(color: Colors.red),),
                               messageText: Text("")
                              );
                            
                                                      
                                                    },
                                                      child: Text("Sign IN"),
                                                      color: Colors.black,
                                                      textColor: Colors.white,
                                                    ),
                                                    SizedBox(
                                                      height: 15.0,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: <Widget>[
                                                        Text("Donot  have an Account ",style: TextStyle(fontSize: 20.0)),
                                                        GestureDetector(
                                                          onTap: (){
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUP()));
                                                          },
                                                          child: Text("Sign Up", style: TextStyle(color: Colors.red, fontSize: 20.0),))
                                                      ],
                                                    ),
                                                     SizedBox(
                                                      height: 15.0,
                                                    ),
                                                  
                                                   
                                                              Container(
                                                       color: Colors.red,
                                                       width: double.infinity,
                                                       child: FlatButton.icon(
                                                       
                                                  onPressed: () async{
                                                        await  AuthProviderService.instance.googleIn();
                                                         
                                                          setState(() {
                                                             Get.to(MyHomePage());
                                                          });
                            
                                                         
                                                           },
                                                                    icon: Icon(EvaIcons.google),
                                                                   label: Text('Google Sign In'),
                                                                   textColor: Colors.white
                                                                   ),
                                                     ),
                            
                                                     
                                                         
                                                   
                                                    ],
                                                  ),
                                                            ),
                                                          ),
                                      )
                                    ),
                                                ),
                                              ),
                                                   ]
                                           ),
                              );
              
                buildProtrait() =>Column(
                                               mainAxisAlignment: MainAxisAlignment.center,   
                                                children: <Widget>[   
                                                Text("Sign In ", style: TextStyle(color: Colors.white, fontSize: 30.0),),
                                                Center(
                                                child: Padding(
                                                padding: const EdgeInsets.all(20.0),
                                                child: SingleChildScrollView(
                                                 child: Form(
                                                       key: formkey,
                                                        child: Card(
                                                             child: Padding(
                                                            padding: const EdgeInsets.all(16.0),
                                                            child: Column(
                                                  children: <Widget>[
                                                    _buildUserNameField(),
                                                    SizedBox(
                                                      height: 5.0,
                                                    ),
                                                    _buildPasswordTextField(),
                                                   
                                                    SizedBox(
                                                      height: 10.0,
                                                    ),
                                                    FlatButton(
                                                  onPressed: () async{
                                                   
                                                      setState(() {
                                                      });
                                                    if (formkey.currentState.validate()){
                                                       await signinwithemail();
                                                    }
                                                   await signinwithemail();
                                                     Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                                                     Get.snackbar("Welcome to ", "Home Page",
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.red,
                              backgroundColor: Colors.blueAccent[200],
                              animationDuration: Duration(milliseconds: 5000),
                               titleText: Text("Welcome to Home Page",style: TextStyle(color: Colors.red),),
                               messageText: Text("")
                              );
                                                  },
                                                    child: Text("Sign IN"),
                                                    color: Colors.black,
                                                    textColor: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      Text("Donot  have an Account ",style: TextStyle(fontSize: 20.0)),
                                                      GestureDetector(
                                                        onTap: (){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUP()));
                                                        },
                                                        child: Text("Sign Up", style: TextStyle(color: Colors.red, fontSize: 20.0),))
                                                    ],
                                                  ),
                                                   SizedBox(
                                                    height: 15.0,
                                                  ),
                                                
                                                 
                                                            Container(
                                                     color: Colors.red,
                                                     width: double.infinity,
                                                     child: FlatButton.icon(
                                                     
                                                onPressed: () async{
                                                      await  AuthProviderService.instance.googleIn();
                                                       
                                                        setState(() {
                                                           Get.to(MyHomePage());
                                                        });
                                                            Get.snackbar("Welcome to ", "Home Page",
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.red,
                              backgroundColor: Colors.black,
                              isDismissible: false,
                              titleText: Text("Welcome to Home Page",style: TextStyle(color: Colors.red),),
                              messageText: Text(""),
                              
                              animationDuration: Duration(milliseconds: 5000)
                              );
                                                       
                                                         },
                                                                  icon: Icon(EvaIcons.google),
                                                                 label: Text('Google Sign In'),
                                                                 textColor: Colors.white
                                                                 ),
                                                   ),
                            
                                                   
                                                       
                                                 
                                                  ],
                                                ),
                                                          ),
                                                        ),
                                    )
                                  ),
                                              ),
                                            ),
                                                 ]
                                         );
    
  // googlesign()async{
  //   GoogleSignIn _googleSignIn = GoogleSignIn();

  // GoogleSignInAccount googleSignInAccount=   await _googleSignIn.signIn();

  //   GoogleSignInAuthentication authentication = await googleSignInAccount.authentication;
  //   AuthCredential credential = GoogleAuthProvider.credential(idToken: authentication.idToken, accessToken: authentication.accessToken);

  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   UserCredential result = await firebaseAuth.signInWithCredential(credential);
  //    firebaseUser = result.user;

  //    setState(() {
  //      isSignIn = true;
  //    });
  // }
 
}