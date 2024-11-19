import 'package:flutter/material.dart';
import 'package:untitled/banner.dart';
import 'package:untitled/pages/chat_page.dart';
import 'package:untitled/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {


  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Главная" ,style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body:Container(
        color: Colors.black,
          child: Center(
            child: Image.asset('assets/images/banner.jpg'),
          )
      ) ,
    );

  }
}



