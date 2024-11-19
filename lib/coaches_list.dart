import 'package:flutter/material.dart';
import 'package:untitled/coach_card.dart';
import 'package:untitled/models/coaches.dart';
import 'package:untitled/order_to_training.dart';
import 'package:untitled/models/control.dart';

class CoachesList extends StatefulWidget {
   int index_coach;
   final VoidCallback OnSave;
  CoachesList({Key? key, required this.index_coach, required this.OnSave}) : super(key: key);

  @override

  State<CoachesList> createState() => _CoachesListState(index_coach);
}

class _CoachesListState extends State<CoachesList> {
  final int index_coach;
  _CoachesListState(this.index_coach);



  @override
  Widget build(BuildContext context) {
     return Container(
      padding: EdgeInsets.all(8),
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: Column(
        children: <Widget>[

          Center(
            child: Expanded(
              flex: 1,
              child: Text("ФИО тренера: ${coachList[index_coach].name}"),
            ),
          ),
          Center(
            child: Expanded(
              flex: 1,
              child: Text("Цена за тренировку ${coachList[index_coach].cost}"),
            ),
          ),
          Center(
            child: Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: ()
                  {
                              setState(() {
                                controller.text = coachList[index_coach].name;
                                cost = coachList[index_coach].cost;
                                Navigator.of(context).pop();
                                //print(controller);

                              });
                              widget.OnSave;

                  },
                  child: Text("Выбрать")
              ),
            ),
          ),
          Center(
            child: Expanded(
              flex: 1,
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CoachCard(index_coach: index_coach)));
                    },
                    child: Text("Подробнее")
                )
            ),
          )
        ],
      ),
    );
  }
}


