import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: NetworkImage('https://cdni.iconscout.com/illustration/premium/thumb/online-education-2890098-2403435.png')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Online Learning Platform', style: TextStyle(color: Colors.purple, fontSize: 30, fontWeight: FontWeight.bold),),
              ),
              Text('Your learning adventure starts now! Explore lessons, gain skills, and take one step closer to success today', style: TextStyle(color:Colors.grey.shade700, fontSize: 20, fontWeight: FontWeight.w400, ), textAlign: TextAlign.center,)
          
          
          
            ],
            
          
          
          ),
        ),
      )



    );
  }
}