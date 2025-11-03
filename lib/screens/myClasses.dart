import 'package:flutter/material.dart';

import '../models/class_model.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  List<ClassModel> classes = [

    ClassModel(name: 'Mathematics', image: 'https://th.bing.com/th/id/OIP.BekwahU1k6Cg6nnpWihVBwHaDe?w=312&h=164&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 30),
    ClassModel(name: 'Science', image: 'https://th.bing.com/th/id/OIP.J8mzoXOEkcTmP_G71Md5_wHaFp?w=227&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 45),
    ClassModel(name: 'Music', image: 'https://th.bing.com/th/id/OIP.eTXG3LaxJ0Cj-YfMv_F1aQHaEK?w=272&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', StudentCount: 31)


    
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('My Classes', style:TextStyle(color:Colors.purple, fontSize: 25,fontWeight: FontWeight.bold)),
        leading: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.purple,fontWeight: FontWeight.bold,),)





      







    );
  }
}