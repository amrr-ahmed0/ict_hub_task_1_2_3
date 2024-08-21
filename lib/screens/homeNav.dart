import 'package:flutter/material.dart';
import 'package:ict_hub_task_1_2_3/screens/apiTest.dart';
import 'package:ict_hub_task_1_2_3/screens/task1.dart';
import 'package:ict_hub_task_1_2_3/screens/task2.dart';
import 'package:ict_hub_task_1_2_3/screens/textFormField.dart';

import 'GridView.dart';

class homeNav extends StatefulWidget {
  const homeNav({super.key});

  @override
  State<homeNav> createState() => _homeNavState();
}

class _homeNavState extends State<homeNav> {

  final List<Widget> _screens = const [
    Task1(),
    Task2(),
    GridViewTest(),
    TextFieldTest(),
    ApiTest(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_index],

      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Colors.grey,
        selectedItemColor: Colors.green,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _index,

        onTap: (index){
          setState(() {
            _index = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.onetwothree_outlined,size: 35,), label: "Counter"),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow,size: 35,), label: "Slider"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_on_outlined,size: 35,), label: "Grid View"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate,size: 35,), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.api,size: 35,), label: "Api"),
        ],
      ),

    );
  }
}
