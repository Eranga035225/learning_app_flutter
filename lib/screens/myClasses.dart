import 'package:flutter/material.dart';
import 'package:learning_app_flutter/screens/myaccount.dart';
import 'package:learning_app_flutter/screens/welcome_screen.dart';

import '../models/class_model.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  List<ClassModel> classes = [

    ClassModel(name: 'Mathematics', image: 'https://th.bing.com/th/id/OIP.yqgu7VW-08-_NVsP9eHDBQHaHa?w=163&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 230),
    ClassModel(name: 'Science', image: 'https://th.bing.com/th/id/OIP.Ojz9xUpgQWXq0BiUMJb0HQHaH0?w=218&h=189&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 145),
    ClassModel(name: 'Music', image: 'https://th.bing.com/th/id/OIP.ri5WUbdKANXTG4xkU_o-uwHaHa?w=190&h=190&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 139),
    ClassModel(name: 'Arts', image: 'https://th.bing.com/th/id/OIP.RLWZ1QU4wE2KgEmE45a0TAHaE5?w=235&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 130),
    ClassModel(name: 'ICT', image: 'https://th.bing.com/th/id/OIP.RKk4iyI9NvuOzkZ5Jji2IgHaHa?w=176&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 245),
    ClassModel(name: 'English', image: 'https://th.bing.com/th/id/OIP.zV-FH1otc52SvmFQL8-YTQAAAA?w=164&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 131),
    ClassModel(name: 'Sinhala', image: 'https://th.bing.com/th/id/OIP.J49AFyfp761UDjsJFltF0QAAAA?w=250&h=188&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 55)


    
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('My Classes', style:TextStyle(color:Colors.purple, fontSize: 25,fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.purple,fontWeight: FontWeight.bold,),
        
        ),
      body: ListView.builder(
        itemCount: classes.length,
        
        itemBuilder: (context, index) {
          final classNow = classes[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white, // background color of the card
              elevation: 4, // shadow depth
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(classNow.image, ),
                ),
                title: Text(classNow.name),
                subtitle: Text('Student Count - ${classNow.StudentCount}',),
               
                
              ),
            ),
          );

          
        }
        
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          items: [
            
              BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyClasses()));

            }, icon: Icon(Icons.school)), label: 'My Classes'),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));

            },
             icon: Icon(Icons.home)), label: 'Home'),
        
        
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));

            }, icon: Icon(Icons.person)), label: 'Profile'),
        
          ]),
      ),




      







    );
  }
}