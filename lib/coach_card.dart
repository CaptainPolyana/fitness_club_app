import 'package:flutter/material.dart';
import 'package:untitled/models/coaches.dart';

class CoachCard extends StatefulWidget {
  int index_coach;
  CoachCard({super.key, required this.index_coach});

  @override
  State<CoachCard> createState() => _CoachCardState(index_coach);
}

class _CoachCardState extends State<CoachCard> {
  final int index_coach;
  _CoachCardState(this.index_coach);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,

      appBar:  AppBar(
        title: Text("Тренер"),
        centerTitle: true,
      ),
      body: ListView(
       padding: const EdgeInsets.all(8),
       children: <Widget>[
         //Картинка
         Container(
           height: 200,
           child: Image.network('${coachList[index_coach].photo}'),
         ),
         //ФИО
         Container(
           margin: EdgeInsets.all(8),
           child: Text("ФИО тренера: ${coachList[index_coach].name}"),
         ),
         //Описание
         Container(
           margin: EdgeInsets.all(8),
           child: Text("Дополнительная информация"),
         ),
         Container(
           width: 200,
           height: 100,
           child: ListView(
             children: <Widget>[
               Text("${coachList[index_coach].description}")
             ],
           ),
         )
       ],
      ),


    );
  }
}
