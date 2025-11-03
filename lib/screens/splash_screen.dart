import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  SplashScreen extends StatelessWidget {
  const  SplashScreen({super.key});

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