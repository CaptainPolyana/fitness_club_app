import 'package:flutter/material.dart';

class SubscriptionRenewal extends StatefulWidget {
  const SubscriptionRenewal({super.key});

  @override
  State<SubscriptionRenewal> createState() => _SubscriptionRenewalState();
}

class _SubscriptionRenewalState extends State<SubscriptionRenewal> {
  TextEditingController numberCard = TextEditingController();
  bool isPicked1 = false;
  bool isPicked2 = false;
  bool isPicked3 = false;
  bool isPicked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Продление абонемента"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.amberAccent,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "Введите номер клубной карты",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      controller: numberCard,
                      maxLength: 10,
                    ),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: <Widget>[
                        _buildCheckboxItem("1 месяц", isPicked1, (bool? value) {
                          setState(() {
                            isPicked1 = value!;
                            isPicked2 = false;
                            isPicked3 = false;
                            isPicked4 = false;
                          });
                        }),
                        _buildCheckboxItem("3 месяца", isPicked2, (bool? value) {
                          setState(() {
                            isPicked1 = false;
                            isPicked2 = value!;
                            isPicked3 = false;
                            isPicked4 = false;
                          });
                        }),
                        _buildCheckboxItem("6 месяцев", isPicked3, (bool? value) {
                          setState(() {
                            isPicked1 = false;
                            isPicked2 = false;
                            isPicked3 = value!;
                            isPicked4 = false;
                          });
                        }),
                        _buildCheckboxItem("1 год", isPicked4, (bool? value) {
                          setState(() {
                            isPicked1 = false;
                            isPicked2 = false;
                            isPicked3 = false;
                            isPicked4 = value!;
                          });
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Подтвердить"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckboxItem(String text, bool isPicked, ValueChanged<bool?> onChanged) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(text),
        Checkbox(
          value: isPicked,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
