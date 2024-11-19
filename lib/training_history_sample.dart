import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/models/coaches.dart';

class TrainingHistorySample extends StatefulWidget {
  int index;
  final VoidCallback OnSave;
  TrainingHistorySample({super.key, required this.index, required this.OnSave});

  @override
  State<TrainingHistorySample> createState() => _TrainingHistorySampleState();
}

class _TrainingHistorySampleState extends State<TrainingHistorySample> {
  @override
  Widget build(BuildContext context) {
    if (TrainingList.isEmpty) {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: Text(
              "Вы еще не записались ни на одну тренировку",
              style: TextStyle(color: Colors.amberAccent),
            ),
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(8),
        width: 300,
        height: 200,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Text("${TrainingList[widget.index].id}"),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "Дата занятия: ${DateFormat('dd-MM-yyyy').format(TrainingList[widget.index].trainingdate.toLocal())}",
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "Время занятия: ${TrainingList[widget.index].trainigtime.format(context)}",
              ),
            ),
            Expanded(
              flex: 1,
              child: Text("Тренер: ${TrainingList[widget.index].trainername}"),
            ),
            ElevatedButton(
              onPressed: () {
                TrainingList.removeWhere((item) => item.id == TrainingList[widget.index].id);
                widget.OnSave();
              },
              child: const Text("Отменить"),
            ),
          ],
        ),
      );
    }
  }
}
