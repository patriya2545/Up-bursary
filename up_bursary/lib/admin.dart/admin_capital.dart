import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:up_bursary/admin.dart/admin_finish.dart';
import 'package:up_bursary/admin.dart/admin_home.dart';
import 'package:up_bursary/admin.dart/admin_interview.dart';

import '../my_style.dart';

class Admin_Capital extends StatefulWidget {
  const Admin_Capital({Key? key}) : super(key: key);

  @override
  State<Admin_Capital> createState() => _Admin_CapitalState();
}

class _Admin_CapitalState extends State<Admin_Capital> {
  List<Widget> widgetsList = [Admin_Home(),Admin_Interview(),Admin_Finish()];
  int indexPage = 0;

  void _onItemTapped(int index) {
    setState(() {
      indexPage = index;
    });
  }

  BottomNavigationBarItem _adminHomeNav() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'หน้าหลัก',
    );
  }

  BottomNavigationBarItem _adminInterviewNav() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.email),
      label: 'รอสัมภาษณ์',
    );
  }

  BottomNavigationBarItem _adminFinishNav() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'ผลการสัมภาษณ์',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetsList.elementAt(indexPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _adminHomeNav(),
          _adminInterviewNav(),
          _adminFinishNav(),
        ],
        currentIndex: indexPage,
        selectedItemColor: Color.fromARGB(255, 250, 249, 251),
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        onTap: _onItemTapped,
      ),
    );
  }
}
