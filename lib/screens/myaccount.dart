import 'package:flutter/material.dart';

import 'myClasses.dart';
import 'welcome_screen.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.purple,),),

        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('MY ACCOUNT', style:TextStyle(color:Colors.purple,fontWeight: FontWeight.bold, fontSize: 18)),

      ),

      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          items: [

            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));

            }, icon: Icon(Icons.person)), label: 'Profile'),
            
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyClasses()));

            }, icon: Icon(Icons.school)), label: 'My Classes'),


            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));

            },
             icon: Icon(Icons.home)), label: 'Home'),
        
        

            
        
          ])),

          body: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:35.0),
              child: Container(
                padding: EdgeInsets.all(10),
                height:170,
                width: MediaQuery.sizeOf( context).width,
                decoration: BoxDecoration(
                  color:Colors.purple,
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.9_MptOLxjJEGSGukPt9FWQHaHa?w=136&h=150&c=6&o=7&dpr=1.3&pid=1.7&rm=3'),
                      radius:40,
                      
                    ),
                    title: Text('John Doe', style:TextStyle(color:Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    subtitle: Text('johndoe@gmail.com', style:TextStyle(color:Colors.white, fontSize: 15, )),
                  ),
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  settingTile(text: 'Account Setting'),
                  settingTile(text: 'Download Options'),
                  settingTile(text: 'Help & Support'),
                  settingTile(text: 'Logout'),
                 


                ],
                
              
              
              
              ),
            )



          ],)


          


      




    );
  }
}

class settingTile extends StatelessWidget {
  final String text;
  const settingTile({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(text, style: TextStyle(color:Colors.purple, fontSize: 18)),
      Spacer(),
      Icon(Icons.arrow_forward_ios_rounded, color:Colors.purple, size: 15,)
    ],);
  }
}