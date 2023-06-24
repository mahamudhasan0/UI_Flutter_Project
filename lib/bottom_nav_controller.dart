import 'package:flutter/material.dart';
import 'package:practice_project_pro/Pages/account.dart';
import 'package:practice_project_pro/Pages/add.dart';
import 'package:practice_project_pro/Pages/chat.dart';
import 'package:practice_project_pro/Pages/home_screen.dart';
import 'package:practice_project_pro/Pages/my_ads.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages =[
    HomeScreen(),
    MyAddScreen(),
    AddScreen(),
    ChatScreen(),
    AccountScreen()
  ];
  int _currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: (int index){
          _currentScreen = index;
          setState(() {});
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedLabelStyle: TextStyle(color:Colors.black,),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: 'My Ads'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
      body: _pages[_currentScreen],
    );
  }
}
