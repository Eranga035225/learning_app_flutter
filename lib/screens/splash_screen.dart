import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'welcome_screen.dart';

class  SplashScreen extends StatefulWidget {
  const  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Logger().e("message");
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });

  }
  @override
  Widget build(BuildContext context) {





    return Scaffold(

      backgroundColor: Colors.purple,
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school, color: Colors.white, size: 90),
            Text('EduMate', style:TextStyle(color:Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
            // CircularProgressIndicator(color: Colors.white,)
            SizedBox(height:20),
            CupertinoActivityIndicator(color: Colors.white, radius: 15,)
          ],
        ))


      
      
      
    
    
    
    
    
    );
  }
}