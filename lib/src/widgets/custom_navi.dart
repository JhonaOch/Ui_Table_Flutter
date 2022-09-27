// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustumBotton extends StatelessWidget {
  const CustumBotton({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color(0xff2E305F),
      unselectedItemColor: Color.fromRGBO(162, 159, 199, 0.455),
      currentIndex: 0,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        BottomNavigationBarItem(
          label: 'Calendario',
          icon: Icon(Icons.calendar_today_outlined)),
            BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline),
          label: 'Calendario',),
          BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'Calendario',)
      ]);
    
  }
}