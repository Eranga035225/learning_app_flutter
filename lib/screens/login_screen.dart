import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
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
                      child: BackButton()
                    ),
                    SizedBox(width:115),
                    Text('LOG IN' , style: TextStyle(color:Colors.grey.shade700, fontSize: 18, fontWeight: FontWeight.bold),),
                  ],
                ),
                
                Text('EduMate', style:TextStyle(color:Colors.purple, fontSize:40, fontWeight: FontWeight.bold )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical:40),
                  child: Text('Enter your log in details to access your account', style:TextStyle(color:const Color.fromARGB(255, 218, 111, 237), fontSize: 19, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(children: [
                    Container(
                      height:45,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 3, 86, 154),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(child: Text('f    Facebook', style:TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.bold))),
                  
                  
                  
                    ),
                    Spacer(),
                    Container(
                      height:45,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(child: Text('G+   Google', style:TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.bold))),
                  
                  
                  
                  
                    )
                  
                  ],),
                ),

                TextField(



                )

                
            
            
            
            
            
            
              ]
            
            ),
          )
        ),
      )






    );
  }
}