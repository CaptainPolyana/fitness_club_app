import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/control.dart';
import 'package:untitled/order_to_training.dart';
import 'package:untitled/pages/edit_infomation.dart';
import 'package:untitled/pages/subscription_renewal.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signOut() async {
    final navigator = Navigator.of(context);

    await FirebaseAuth.instance.signOut();

    navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }
  void updateState(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Профиль" ,style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amberAccent,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 32, right: 32, bottom: 32, top: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.grey
                  ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                            child: Container(
                              child: Icon(Icons.ac_unit_outlined),
                            )
                        ),
                        Expanded(
                          flex: 1,
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                  child: Text(" Ваш Email: ${user?.email}")
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Text("Ваше имя:")
                                  ),
                                  Expanded(
                                    flex: 1,
                                      child: TextField(
                                        controller: name,
                                        readOnly: true,
                                      )
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Text("Ваша дата рождения:")
                                  ),
                                  Expanded(
                                    flex: 1,
                                      child: TextField(
                                        controller: date_of_birth,
                                        readOnly: true,
                                      )
                                  ),
                                  Expanded(
                                    flex: 1,
                                      child: IconButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditInfomation(OnSave: updateState)));
                                          },
                                          icon: Icon(Icons.edit)
                                      )
                                  ),
                                  Expanded(
                                    flex: 1,
                                      child: IconButton(
                                          onPressed: (){
                                                      signOut();
                                          },
                                          icon: Icon(Icons.logout))
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                )
            ),
            Expanded(
              flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 32, right: 32, bottom: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.amberAccent
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child:Container(
                            padding: EdgeInsets.only(left: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                                  
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                    child: Text("Записаться на тренировку"
                                    ),
                                ),
                                Expanded(
                                  flex: 1,
                                    child: TextButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => OrderToTraining()));
                                        },
                                        child: Icon(Icons.arrow_forward)
                                    )
                                )

                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded
                                  (child: Text("Тренировки, на котороые вы записались")
                                ),
                                Expanded(
                                    child: TextButton(
                                    onPressed: (){
                                      Navigator.of(context).pushNamed('/history_training');
                                    },
                                    child: Icon(Icons.arrow_forward)
                                )
                                )
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                    child: Text("Продление абонемента"),
                                ),
                                Expanded(
                                  flex: 1,
                                    child: TextButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionRenewal()));
                                        },
                                        child: Icon(Icons.arrow_forward)
                                    )
                                )

                              ],
                            ),
                          )
                      )
                    ],
                  ),
                )
            )


          ],
        ),
      )

    );
  }
}
