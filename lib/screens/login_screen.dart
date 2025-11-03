import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app_flutter/screens/myClasses.dart';
import 'package:learning_app_flutter/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
  @override
  Widget build(BuildContext context) {
     final  size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: BackButton(
                        color:Colors.purple
                      )
                    ),
                    SizedBox(width:115),
                    Text('LOG IN' , style: TextStyle(color:Colors.purple, fontSize: 18),),
                  ],
                ),
                
                Text('EduMate', style:TextStyle(color:Colors.purple, fontSize:40, fontWeight: FontWeight.bold )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical:40),
                  child: Text('Enter your log in details to access your account', style:TextStyle(color:Colors.purple, fontSize: 19), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(children: [
                    Container(
                      height:45,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 3, 86, 154),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                             Icon(FontAwesomeIcons.facebook, color: Colors.white,),
                             SizedBox(width:10),
                            Text('Facebook', style:TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                           
                          ],
                        ),
                      )),
                  
                  
                  
                    ),
                    Spacer(),
                    Container(
                      height:45,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.googlePlus, color: Colors.white,),
                            SizedBox(width:15),
                            Text('Google', style:TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                  
                  
                  
                  
                    )
                  
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50.0,right:50.0 ,top:50,bottom:40 ),
                  child: TextField(
                   
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.purple
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.purple,

                          
                        )
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.purple

                      )


                    ),
                  
                  
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0,),
                  child: TextField(
                   
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.purple
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.purple,

                          
                        )
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.purple

                      )


                    ),
                  
                  
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 50),
                  child: Row(children: [
                    Icon(Icons.check_box_outline_blank, color: Colors.purple,),
                    SizedBox(width:5),
                    Text('Remember Me?' ,style: TextStyle(color: Colors.purple, fontSize: 14, fontWeight: FontWeight.bold),)  ,
                    Spacer(),
                    Text('Forgot password?', style: TextStyle(color:Colors.red, fontSize: 14, fontWeight: FontWeight.bold),)
                  ],),
                ),

                SizedBox(height:30),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyClasses()));



                  },
                  child: CustomButton(size: size , text: 'Log in with your account')),

                Padding(
                  padding: const EdgeInsets.only(top:100,left:68,right:50),
                  child: Row(children: [
                    Text('Don\'t have an Account?', style: TextStyle(color:Colors.purple,fontSize: 14, fontWeight: FontWeight.bold),),
                    SizedBox(width:10),
                    Text('Create account', style:TextStyle(color:Colors.blue,fontSize: 14, fontWeight: FontWeight.bold)),
                  ],),
                )
                
            
            
            
            
            
            
              ]
            
            ),
          )
        ),
      )






    );
  }
}