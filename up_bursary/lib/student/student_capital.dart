import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_bursary/student/student_home.dart';
import 'package:up_bursary/student/student_profile.dart';
import 'package:up_bursary/student/student_status.dart';

import '../my_style.dart';

class Student_Capital extends StatefulWidget {
  const Student_Capital({super.key});

  @override
  State<Student_Capital> createState() => _Student_CapitalState();
}

class _Student_CapitalState extends State<Student_Capital> {
  @override
  List<Widget> widgetsList = [Student_Home(),Student_Status(),Student_Profile()];
  int indexPage = 0;

  void _onItemTapped(int index) {
    setState(() {
      indexPage = index;
    });
  }


  BottomNavigationBarItem studentHomeNav(){
    return BottomNavigationBarItem (icon: Icon(Icons.home),
              label: "ทุน",);
  }

  BottomNavigationBarItem studentStatusNav(){
    return BottomNavigationBarItem (icon: Icon(Icons.email),
              label: "สถานะ",);
  }

  BottomNavigationBarItem studentProfileNav(){
    return BottomNavigationBarItem (icon: Icon(Icons.person),
              label: "โปรไฟล์",);
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetsList.elementAt(indexPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          studentHomeNav(),
          studentStatusNav(),
          studentProfileNav(),
        ],
        currentIndex: indexPage,
        selectedItemColor: Color.fromARGB(255, 250, 249, 251),
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        onTap: _onItemTapped,
      ),
    );
  }
}