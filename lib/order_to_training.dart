import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/coaches_list.dart';
import 'package:untitled/models/coaches.dart';
import 'package:untitled/models/control.dart';


class OrderToTraining extends StatefulWidget {
  OrderToTraining({super.key});

  @override
  State<OrderToTraining> createState() => _OrderToTrainingState();
}

class _OrderToTrainingState extends State<OrderToTraining> {
  int id = 1;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  void updateState() {
    setState(() {});
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != TimeOfDay.now()) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  /*Future<void> _selectTime(BuildContext context, TimeOfDay initialTime) async{
     final TimeOfDay? picked = await showTimePicker(context: context, initialTime: initialTime)

   }*/

  Future<Widget?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2024),
        lastDate: DateTime(2101));

    if (picked!.isBefore(selectedDate)) {
      return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: const Text("Ошибка!"),
                content: const Text(
                    "Вы выбрали непаривильную дату. Повторите попытку."),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Text("okay"),
                      ))
                ],
              ));
    }
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.amberAccent,
          title: Text("Запись на тренировку"),
          centerTitle: true,
        ),
        backgroundColor: Colors.amberAccent,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amberAccent
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                          child: Text("Выберите дату тренировки:"),

                        )
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(DateFormat('dd-MM-yyyy').format(selectedDate)),
                            IconButton(
                                onPressed: () {
                                  _selectDate(context);
                                },
                                icon: Icon(Icons.calendar_month))
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Text("Выберите время для тренировки:")),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.amberAccent
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("${selectedTime}"),
                          IconButton(
                              onPressed: () {
                                _selectTime(context);
                              },
                              icon: Icon(Icons.access_time_filled))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: TextField(
                            controller: controller,
                            readOnly: true,

                          )),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Список тренеров"),
                                        content: Container(
                                          margin: EdgeInsets.only(top: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.black
                                          ),
                                            width: double.maxFinite,
                                            child: GridView.builder(
                                                itemCount: coachList.length,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2,
                                                        crossAxisSpacing: 8,
                                                        mainAxisSpacing: 8,
                                                        childAspectRatio:
                                                            0.510),
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return CoachesList(
                                                      index_coach: index,
                                                      OnSave: updateState);
                                                })),
                                        actions: <Widget>[
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Закрыть"))
                                        ],
                                      );
                                    });
                              },
                              icon: Icon(Icons.arrow_downward))),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if(controller.text == ""){
                          showDialog(context: context,
                              builder: (BuildContext context)
                              {
                                return AlertDialog(
                                  title: Text("Ошибка"),
                                content: Text("Тренер не выбран"),
                                actions: <Widget>[
                                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("ОК"))
                                ],
                                );
                              }
                          );
                        }
                        else {
                          if (TrainingList.isEmpty) {
                            id = 1;
                            Training newTraining = Training(
                                id, selectedDate, selectedTime, controller.text,
                                cost);
                            TrainingList.add(newTraining);
                          } else {
                            id = TrainingList.last.id + 1;
                            Training newTraining = Training(
                                id, selectedDate, selectedTime, controller.text,
                                cost);
                            TrainingList.add(newTraining);
                          }
                          controller.text = "";

                          Navigator.of(context).pop();
                        }
                      },
                      child: Text("Подтвердить")
                  ),
                )
            ),
            Expanded(
                flex: 2,
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Отменить")),
                ))
          ],
        ));
  }
}
