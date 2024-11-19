import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/pages/chat_page.dart';
import 'package:untitled/profile_page.dart';
class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  final List<Widget> Pages = [HomePage(), ChatPage(), ProfilePage()];
  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Главная"
          ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
              label: "Чат"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
              label: "Профиль"
            )
         ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ) ,
    );
  }
}
