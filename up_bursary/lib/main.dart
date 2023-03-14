import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_bursary/router.dart';
import 'package:up_bursary/student/student_capital.dart';
import 'package:up_bursary/student/student_status.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: router,
      initialRoute: '/home',
    );
  }

}

