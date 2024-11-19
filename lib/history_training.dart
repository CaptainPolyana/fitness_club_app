import 'package:flutter/material.dart';
import 'package:untitled/models/coaches.dart';
import 'package:untitled/training_history_sample.dart';

class HistoryTraining extends StatefulWidget {
  const HistoryTraining({super.key});

  @override
  State<HistoryTraining> createState() => _HistoryTrainingState();
}

class _HistoryTrainingState extends State<HistoryTraining> {
  void updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    if (TrainingList.isEmpty) {
      updateState();
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: Text(
              "Ваши тренировки",
            ),
            centerTitle: true,
          ),
          body: Container(
              width: 1200,
              height: 1080,
              decoration: BoxDecoration(color: Colors.black),
              child: Center(
                child: Text(
                  "Вы еще не записались ни на одну тренировку",
                  style: TextStyle(color: Colors.amberAccent),
                ),
              )));
    } else {
      updateState();
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: Text("Ваши тренировки"),
            centerTitle: true,
          ),
          body: Container(
            width: 1200,
                height: 1080,
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                child:  ListView.builder(
              itemCount: TrainingList.length,
              itemBuilder: (context, int index) {
                return TrainingHistorySample(index: index, OnSave: updateState,);
              }
              )
          )
      );
    }
  }
}
