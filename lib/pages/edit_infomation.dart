import 'package:flutter/material.dart';
import 'package:untitled/models/control.dart';


class EditInfomation extends StatefulWidget {
  final VoidCallback OnSave;
  const EditInfomation({super.key, required this.OnSave});

  @override
  State<EditInfomation> createState() => _EditInfomationState();
}

class _EditInfomationState extends State<EditInfomation> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Изменение информации"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
                child: Text("Введите свое имя:")
            ),
            Expanded(
              flex: 1,
                child: TextField(
                  controller: name,
                ),
            ),
            Expanded(
              flex: 1,
                child: Text("Введите дату рождения")
            ),
            Expanded(
              flex: 1,
                child: TextField(
                  controller: date_of_birth,
                )
            ),
            Expanded(
                flex: 1,
                child: ElevatedButton(
                    onPressed: (){
                     setState(() {

                     });
                     widget.OnSave;
                      Navigator.of(context).pop();
                    },
                    child: Text("Применить изменения")
                )
            )
          ],
        ),
      ),
    );
  }
}
